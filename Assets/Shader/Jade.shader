// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34180,y:32828,varname:node_3138,prsc:2|emission-5991-OUT;n:type:ShaderForge.SFN_LightVector,id:9118,x:32174,y:32546,varname:node_9118,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:945,x:32174,y:32671,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:3145,x:32368,y:32588,varname:node_3145,prsc:2,dt:0|A-9118-OUT,B-945-OUT;n:type:ShaderForge.SFN_Vector1,id:4596,x:32368,y:32737,varname:node_4596,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:1937,x:32518,y:32617,varname:node_1937,prsc:2|A-3145-OUT,B-4596-OUT;n:type:ShaderForge.SFN_Add,id:8790,x:32669,y:32617,varname:node_8790,prsc:2|A-1937-OUT,B-3043-OUT;n:type:ShaderForge.SFN_Vector1,id:3043,x:32518,y:32737,varname:node_3043,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Clamp01,id:8840,x:32821,y:32633,varname:node_8840,prsc:2|IN-8790-OUT;n:type:ShaderForge.SFN_Tex2d,id:8266,x:33157,y:32667,ptovrint:False,ptlb:颜色贴图,ptin:_,varname:node_8266,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a8b62d64efec5704980fefabeceb10ac,ntxv:0,isnm:False|UVIN-7664-OUT;n:type:ShaderForge.SFN_Vector1,id:3712,x:32821,y:32776,varname:node_3712,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Append,id:7664,x:32976,y:32655,varname:node_7664,prsc:2|A-8840-OUT,B-3712-OUT;n:type:ShaderForge.SFN_LightVector,id:1841,x:32135,y:33135,varname:node_1841,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:6270,x:32135,y:32988,prsc:2,pt:False;n:type:ShaderForge.SFN_Add,id:757,x:32368,y:32866,varname:node_757,prsc:2|A-9704-XYZ,B-6270-OUT;n:type:ShaderForge.SFN_Dot,id:1675,x:32624,y:33030,varname:node_1675,prsc:2,dt:0|A-5910-OUT,B-1841-OUT;n:type:ShaderForge.SFN_Vector4Property,id:9704,x:32135,y:32835,ptovrint:False,ptlb:高光偏移1,ptin:_1,varname:node_9704,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0.47,v3:0,v4:0;n:type:ShaderForge.SFN_If,id:7704,x:33067,y:32999,varname:node_7704,prsc:2|A-1675-OUT,B-7548-OUT,GT-8439-OUT,EQ-7548-OUT,LT-6228-OUT;n:type:ShaderForge.SFN_Vector1,id:6228,x:32827,y:33051,varname:node_6228,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:8439,x:32827,y:33168,varname:node_8439,prsc:2,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:7548,x:32827,y:33112,ptovrint:False,ptlb:高光大小_1,ptin:__1,varname:node_7548,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.993;n:type:ShaderForge.SFN_Vector4Property,id:5231,x:32051,y:33297,ptovrint:False,ptlb:高光偏移2,ptin:_2,varname:node_5231,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Add,id:199,x:32301,y:33297,varname:node_199,prsc:2|A-5231-XYZ,B-6270-OUT;n:type:ShaderForge.SFN_Dot,id:8144,x:32602,y:33206,varname:node_8144,prsc:2,dt:0|A-26-OUT,B-1841-OUT;n:type:ShaderForge.SFN_If,id:5877,x:33049,y:33201,varname:node_5877,prsc:2|A-8144-OUT,B-3803-OUT,GT-8439-OUT,EQ-8144-OUT,LT-6228-OUT;n:type:ShaderForge.SFN_Max,id:3259,x:33305,y:33046,varname:node_3259,prsc:2|A-7704-OUT,B-5877-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3803,x:32827,y:33304,ptovrint:False,ptlb:高光大小_2,ptin:__2,varname:node_3803,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.9995;n:type:ShaderForge.SFN_Clamp01,id:4679,x:33511,y:33072,varname:node_4679,prsc:2|IN-3259-OUT;n:type:ShaderForge.SFN_Normalize,id:5910,x:32563,y:32866,varname:node_5910,prsc:2|IN-757-OUT;n:type:ShaderForge.SFN_Normalize,id:26,x:32499,y:33355,varname:node_26,prsc:2|IN-199-OUT;n:type:ShaderForge.SFN_Lerp,id:5904,x:33630,y:32852,varname:node_5904,prsc:2|A-8266-RGB,B-597-XYZ,T-4679-OUT;n:type:ShaderForge.SFN_Vector4Property,id:597,x:33271,y:32834,ptovrint:False,ptlb:node_597,ptin:_node_597,varname:node_597,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1,v2:1,v3:1,v4:0;n:type:ShaderForge.SFN_Fresnel,id:7608,x:33305,y:33236,varname:node_7608,prsc:2|EXP-685-OUT;n:type:ShaderForge.SFN_Vector1,id:685,x:33190,y:33326,varname:node_685,prsc:2,v1:3;n:type:ShaderForge.SFN_Multiply,id:4061,x:33628,y:33309,varname:node_4061,prsc:2|A-7608-OUT,B-7815-XYZ;n:type:ShaderForge.SFN_Vector4Property,id:7815,x:33412,y:33393,ptovrint:False,ptlb:node_7815,ptin:_node_7815,varname:node_7815,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1,v2:1,v3:1,v4:0;n:type:ShaderForge.SFN_Blend,id:5991,x:33891,y:32913,varname:node_5991,prsc:2,blmd:6,clmp:True|SRC-5904-OUT,DST-4061-OUT;proporder:8266-9704-7548-5231-3803-597-7815;pass:END;sub:END;*/

Shader "AP01/Lession1/Jade1" {
    Properties {
        _ ("颜色贴图", 2D) = "white" {}
        _1 ("高光偏移1", Vector) = (0,0.47,0,0)
        __1 ("高光大小_1", Float ) = 0.993
        _2 ("高光偏移2", Vector) = (0,0,0,0)
        __2 ("高光大小_2", Float ) = 0.9995
        _node_597 ("node_597", Vector) = (1,1,1,0)
        _node_7815 ("node_7815", Vector) = (1,1,1,0)
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
            uniform sampler2D _; uniform float4 __ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _1)
                UNITY_DEFINE_INSTANCED_PROP( float, __1)
                UNITY_DEFINE_INSTANCED_PROP( float4, _2)
                UNITY_DEFINE_INSTANCED_PROP( float, __2)
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_597)
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_7815)
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
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float2 node_7664 = float2(saturate(((dot(lightDirection,i.normalDir)*0.5)+0.5)),0.2);
                float4 __var = tex2D(_,TRANSFORM_TEX(node_7664, _));
                float4 _node_597_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_597 );
                float4 _1_var = UNITY_ACCESS_INSTANCED_PROP( Props, _1 );
                float __1_var = UNITY_ACCESS_INSTANCED_PROP( Props, __1 );
                float node_7704_if_leA = step(dot(normalize((_1_var.rgb+i.normalDir)),lightDirection),__1_var);
                float node_7704_if_leB = step(__1_var,dot(normalize((_1_var.rgb+i.normalDir)),lightDirection));
                float node_6228 = 0.0;
                float node_8439 = 1.0;
                float4 _2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _2 );
                float node_8144 = dot(normalize((_2_var.rgb+i.normalDir)),lightDirection);
                float __2_var = UNITY_ACCESS_INSTANCED_PROP( Props, __2 );
                float node_5877_if_leA = step(node_8144,__2_var);
                float node_5877_if_leB = step(__2_var,node_8144);
                float4 _node_7815_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_7815 );
                float3 emissive = saturate((1.0-(1.0-lerp(__var.rgb,_node_597_var.rgb,saturate(max(lerp((node_7704_if_leA*node_6228)+(node_7704_if_leB*node_8439),__1_var,node_7704_if_leA*node_7704_if_leB),lerp((node_5877_if_leA*node_6228)+(node_5877_if_leB*node_8439),node_8144,node_5877_if_leA*node_5877_if_leB)))))*(1.0-(pow(1.0-max(0,dot(normalDirection, viewDirection)),3.0)*_node_7815_var.rgb))));
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
            uniform sampler2D _; uniform float4 __ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _1)
                UNITY_DEFINE_INSTANCED_PROP( float, __1)
                UNITY_DEFINE_INSTANCED_PROP( float4, _2)
                UNITY_DEFINE_INSTANCED_PROP( float, __2)
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_597)
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_7815)
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
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
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
