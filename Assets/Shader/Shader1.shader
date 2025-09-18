// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32986,y:32797,varname:node_3138,prsc:2|emission-7129-RGB,custl-7129-RGB;n:type:ShaderForge.SFN_Dot,id:4319,x:32164,y:32896,varname:node_4319,prsc:2,dt:0|A-1494-OUT,B-1563-OUT;n:type:ShaderForge.SFN_NormalVector,id:1494,x:31945,y:32771,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:1563,x:31945,y:32963,varname:node_1563,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:3802,x:32509,y:32912,varname:node_3802,prsc:2|IN-3597-OUT;n:type:ShaderForge.SFN_Multiply,id:7427,x:32300,y:32661,varname:node_7427,prsc:2|A-4319-OUT,B-1733-OUT;n:type:ShaderForge.SFN_Vector1,id:1733,x:32272,y:32575,varname:node_1733,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:3597,x:32530,y:32661,varname:node_3597,prsc:2|A-7427-OUT,B-7929-OUT;n:type:ShaderForge.SFN_Vector1,id:7929,x:32493,y:32575,varname:node_7929,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:8336,x:32462,y:33309,varname:node_8336,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Append,id:4844,x:32647,y:33098,varname:node_4844,prsc:2|A-3802-OUT,B-8336-OUT;n:type:ShaderForge.SFN_Tex2d,id:7129,x:32759,y:33224,ptovrint:False,ptlb:node_7129,ptin:_node_7129,varname:node_7129,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:817edfa6d3b34134faa4f692f0207c20,ntxv:0,isnm:False|UVIN-4844-OUT;proporder:7129;pass:END;sub:END;*/

Shader "AP01/Lession1/Lambert1" {
    Properties {
        _node_7129 ("node_7129", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
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
            uniform sampler2D _node_7129; uniform float4 _node_7129_ST;
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
                float2 node_4844 = float2(saturate(((dot(i.normalDir,lightDirection)*0.5)+0.5)),0.2);
                float4 _node_7129_var = tex2D(_node_7129,TRANSFORM_TEX(node_4844, _node_7129));
                float3 emissive = _node_7129_var.rgb;
                float3 finalColor = emissive + _node_7129_var.rgb;
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
            uniform sampler2D _node_7129; uniform float4 _node_7129_ST;
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
                float2 node_4844 = float2(saturate(((dot(i.normalDir,lightDirection)*0.5)+0.5)),0.2);
                float4 _node_7129_var = tex2D(_node_7129,TRANSFORM_TEX(node_4844, _node_7129));
                float3 finalColor = _node_7129_var.rgb;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
