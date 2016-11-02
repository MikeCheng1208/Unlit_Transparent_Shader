
Shader "Mike/Transparent Depth" {
	Properties{
		_MainTex("Base (RGB) Trans (A)", 2D) = "white" {}
	}
	SubShader{
		Tags{ "Queue" = "Transparent-20" "IgnoreProjector" = "True" "RenderType" = "Transparent" }

		ZWrite Off
		Blend SrcAlpha OneMinusSrcAlpha
		Pass{
			Lighting Off
			SetTexture[_MainTex]{ combine texture }
		}
	}
}