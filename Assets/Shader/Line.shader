// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33446,y:32628,varname:node_3138,prsc:2|emission-779-OUT;n:type:ShaderForge.SFN_LightVector,id:4035,x:31880,y:32783,varname:node_4035,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9911,x:31880,y:32946,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:7119,x:32119,y:32832,varname:node_7119,prsc:2,dt:0|A-4035-OUT,B-9911-OUT;n:type:ShaderForge.SFN_Tex2d,id:4308,x:32415,y:32621,ptovrint:False,ptlb:node_4308,ptin:_node_4308,varname:node_4308,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6a5dcedef7e121e468bf55afed723d35,ntxv:0,isnm:False|UVIN-2228-OUT;n:type:ShaderForge.SFN_ScreenPos,id:1302,x:32028,y:32487,varname:node_1302,prsc:2,sctp:0;n:type:ShaderForge.SFN_Multiply,id:2228,x:32256,y:32598,varname:node_2228,prsc:2|A-1302-UVOUT,B-8922-OUT;n:type:ShaderForge.SFN_Depth,id:8922,x:32046,y:32645,varname:node_8922,prsc:2;n:type:ShaderForge.SFN_Step,id:5842,x:32654,y:32716,varname:node_5842,prsc:2|A-4308-RGB,B-7119-OUT;n:type:ShaderForge.SFN_Lerp,id:2520,x:32889,y:32927,varname:node_2520,prsc:2|A-4570-XYZ,B-2310-XYZ,T-5842-OUT;n:type:ShaderForge.SFN_Vector4Property,id:4570,x:32564,y:32908,ptovrint:False,ptlb:node_4570,ptin:_node_4570,varname:node_4570,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0.5,v3:0.5,v4:0;n:type:ShaderForge.SFN_Vector4Property,id:2310,x:32564,y:33069,ptovrint:False,ptlb:node_2310,ptin:_node_2310,varname:node_2310,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1,v2:1,v3:1,v4:0;n:type:ShaderForge.SFN_Clamp01,id:779,x:33087,y:32966,varname:node_779,prsc:2|IN-2808-OUT;n:type:ShaderForge.SFN_Add,id:2808,x:32958,y:33229,varname:node_2808,prsc:2|A-2520-OUT,B-7119-OUT;proporder:4308-4570-2310;pass:END;sub:END;*/

Shader "AP01/Lession2/Line" {
    Properties {
        _node_4308 ("node_4308", 2D) = "white" {}
        _node_4570 ("node_4570", Vector) = (0,0.5,0.5,0)
        _node_2310 ("node_2310", Vector) = (1,1,1,0)
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _node_4308; uniform float4 _node_4308_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_4570)
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_2310)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float4 _node_4570_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_4570 );
                float4 _node_2310_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_2310 );
                float2 node_2228 = ((sceneUVs * 2 - 1).rg*partZ);
                float4 _node_4308_var = tex2D(_node_4308,TRANSFORM_TEX(node_2228, _node_4308));
                float node_7119 = dot(lightDirection,i.normalDir);
                float3 emissive = saturate((lerp(_node_4570_var.rgb,_node_2310_var.rgb,step(_node_4308_var.rgb,node_7119))+node_7119));
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma target 3.0
            uniform sampler2D _node_4308; uniform float4 _node_4308_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_4570)
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_2310)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
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
