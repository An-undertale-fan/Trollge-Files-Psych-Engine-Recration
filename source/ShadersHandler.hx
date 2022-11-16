package;

import openfl.display.Shader;
import openfl.filters.ShaderFilter;
import Vcr;
import ChromaticAberration;

class ShadersHandler
{
	public static var chromaticAberration:ShaderFilter = new ShaderFilter(new ChromaticAberration());
	public static var vcr:ShaderFilter = new ShaderFilter(new Vcr());

	public static function setChrome(chromeOffsetR:Float, chromeOffsetG:Float, chromeOffsetB:Float):Void
	{
		chromaticAberration.shader.data.rOffset.value = [chromeOffsetR];
		chromaticAberration.shader.data.gOffset.value = [chromeOffsetG];
		chromaticAberration.shader.data.bOffset.value = [chromeOffsetB];
	}
    public static function setNoise(value:Float) {
        vcr.noisePercent.value[0] = value;
    }
    public static function setITime(value:Float) {
        vcr.iTime.value[0] = value;
    }
}
