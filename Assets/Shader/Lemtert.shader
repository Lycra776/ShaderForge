// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33315,y:32839,varname:node_3138,prsc:2|emission-179-RGB,olwid-9745-OUT,olcol-8992-OUT;n:type:ShaderForge.SFN_LightVector,id:6028,x:31763,y:32836,varname:node_6028,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:4,x:31775,y:32966,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:650,x:32030,y:32904,varname:node_650,prsc:2,dt:0|A-6028-OUT,B-4-OUT;n:type:ShaderForge.SFN_Vector1,id:1123,x:32053,y:33064,varname:node_1123,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:492,x:32223,y:32940,varname:node_492,prsc:2|A-650-OUT,B-1123-OUT;n:type:ShaderForge.SFN_Vector1,id:8971,x:32223,y:33083,varname:node_8971,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:942,x:32378,y:32940,varname:node_942,prsc:2|A-492-OUT,B-8971-OUT;n:type:ShaderForge.SFN_Clamp01,id:5414,x:32542,y:32966,varname:node_5414,prsc:2|IN-942-OUT;n:type:ShaderForge.SFN_Tex2d,id:179,x:32867,y:33109,ptovrint:False,ptlb:node_179,ptin:_node_179,varname:node_179,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c2a5c79ad185a944eb8b48e4dda73f55,ntxv:0,isnm:False|UVIN-1137-OUT;n:type:ShaderForge.SFN_Vector1,id:3208,x:32528,y:33158,varname:node_3208,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Append,id:1137,x:32685,y:33079,varname:node_1137,prsc:2|A-5414-OUT,B-3208-OUT;n:type:ShaderForge.SFN_Vector1,id:9745,x:33014,y:33237,varname:node_9745,prsc:2,v1:0.01;n:type:ShaderForge.SFN_Vector3,id:8992,x:33001,y:33291,varname:node_8992,prsc:2,v1:255,v2:0,v3:0;proporder:179;pass:END;sub:END;*/

Shader "AP01/Lession1/Lambert2" {
    Properties {
        _node_179 ("node_179", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*0.01,1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                return fixed4(float3(255,0,0),0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _node_179; uniform float4 _node_179_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float2 node_1137 = float2(saturate(((dot(lightDirection,i.normalDir)*0.5)+0.5)),0.1);
                float4 _node_179_var = tex2D(_node_179,TRANSFORM_TEX(node_1137, _node_179));
                float3 emissive = _node_179_var.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma target 3.0
            uniform sampler2D _node_179; uniform float4 _node_179_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
