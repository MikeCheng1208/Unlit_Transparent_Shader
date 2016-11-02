#【Unity】Unlit Transparent 平面重疊交錯


*使用Unlit Transparent材質球，兩個Plane的貼圖同樣都帶有alpha然後排在一起時，攝影機在Render時常常會出現兩個Plane平面重疊交錯，階層混亂的問題
*新增一個新的Unlit Shader然後修改Queue Transparent

```c#
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
```
* 教學
<http://zhi-yuan-chenge.blogspot.tw/>