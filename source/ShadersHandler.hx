package;

import openfl.display.Shader;
import openfl.filters.ShaderFilter;
import Vcr;
import ChromaticAberration;

class ShadersHandler
{
	public static var chromaticAberration:ShaderFilter = new ShaderFilter(new ChromaticAberration());
	public static var vcr:ShaderFilter = new ShaderFilter(new Vcr());

	public static function setChrome(chromeOffset:Float):Void
	{
		chromaticAberration.shader.data.rOffset.value = [chromeOffset];
		chromaticAberration.shader.data.gOffset.value = [0.0];
		chromaticAberration.shader.data.bOffset.value = [chromeOffset * -1];
	}
    public static function setNoise(value:Float) {
        vcr.shader.data.noisePercent.value[0] = value;
    }
    public static function setITime(value:Float) {
        vcr.shader.data.iTime.value[0] = value;
    }
}
