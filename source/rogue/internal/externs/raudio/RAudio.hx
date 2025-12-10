package rogue.internal.externs.raudio;

import cpp.Float32;
import cpp.RawConstPointer;
import cpp.ConstCharStar;
import cpp.RawPointer;
import cpp.UInt32;

typedef AudioCallback = cpp.Callable<(bufferData:RawPointer<cpp.Void>, frames:UInt32) -> Void>;

@:include('raudio.h')
@:structAccess
@:native('Wave')
extern class Wave
{
	function new():Void;

	var frameCount:UInt32;
	var sampleRate:UInt32;
	var sampleSize:UInt32;
	var channels:UInt32;
	var data:RawPointer<cpp.Void>;
}

@:include('raudio.h')
@:native('rAudioBuffer')
extern class RAudioBuffer {}

@:include('raudio.h')
@:native('rAudioProcessor')
extern class RAudioProcessor {}

@:include('raudio.h')
@:structAccess
@:native('AudioStream')
extern class AudioStream
{
	function new():Void;

	var buffer:RawPointer<RAudioBuffer>;
	var processor:RawPointer<RAudioProcessor>;
	var sampleRate:UInt32;
	var sampleSize:UInt32;
	var channels:UInt32;
}

@:include('raudio.h')
@:structAccess
@:native('Sound')
extern class Sound
{
	function new():Void;

	var stream:AudioStream;
	var frameCount:UInt32;
}

@:include('raudio.h')
@:structAccess
@:native('Music')
extern class Music
{
	function new():Void;

	var stream:AudioStream;
	var frameCount:UInt32;
	var looping:Bool;
	var ctxType:Int;
	var ctxData:RawPointer<cpp.Void>;
}

@:include('raudio.h')
extern class RAudio
{
	@:native('InitAudioDevice')
	static function InitAudioDevice():Void;

	@:native('CloseAudioDevice')
	static function CloseAudioDevice():Void;

	@:native('IsAudioDeviceReady')
	static function IsAudioDeviceReady():Bool;

	@:native('SetMasterVolume')
	static function SetMasterVolume(volume:Float32):Void;

	@:native('GetMasterVolume')
	static function GetMasterVolume():Float32;

	@:native('LoadWave')
	static function LoadWave(fileName:ConstCharStar):Wave;

	@:native('LoadWaveFromMemory')
	static function LoadWaveFromMemory(fileType:ConstCharStar, fileData:RawConstPointer<cpp.UInt8>, dataSize:Int):Wave;

	@:native('IsWaveReady')
	static function IsWaveReady(wave:Wave):Bool;

	@:native('LoadSound')
	static function LoadSound(fileName:ConstCharStar):Sound;

	@:native('LoadSoundFromWave')
	static function LoadSoundFromWave(wave:Wave):Sound;

	@:native('LoadSoundAlias')
	static function LoadSoundAlias(source:Sound):Sound;

	@:native('IsSoundReady')
	static function IsSoundReady(sound:Sound):Bool;

	@:native('UpdateSound')
	static function UpdateSound(sound:Sound, data:RawConstPointer<cpp.Void>, frameCount:Int):Void;

	@:native('UnloadWave')
	static function UnloadWave(wave:Wave):Void;

	@:native('UnloadSound')
	static function UnloadSound(sound:Sound):Void;

	@:native('UnloadSoundAlias')
	static function UnloadSoundAlias(alias:Sound):Void;

	@:native('ExportWave')
	static function ExportWave(wave:Wave, fileName:ConstCharStar):Bool;

	@:native('ExportWaveAsCode')
	static function ExportWaveAsCode(wave:Wave, fileName:ConstCharStar):Bool;

	@:native('PlaySound')
	static function PlaySound(sound:Sound):Void;

	@:native('StopSound')
	static function StopSound(sound:Sound):Void;

	@:native('PauseSound')
	static function PauseSound(sound:Sound):Void;

	@:native('ResumeSound')
	static function ResumeSound(sound:Sound):Void;

	@:native('IsSoundPlaying')
	static function IsSoundPlaying(sound:Sound):Bool;

	@:native('SetSoundVolume')
	static function SetSoundVolume(sound:Sound, volume:Float32):Void;

	@:native('SetSoundPitch')
	static function SetSoundPitch(sound:Sound, pitch:Float32):Void;

	@:native('SetSoundPan')
	static function SetSoundPan(sound:Sound, pan:Float32):Void;

	@:native('WaveCopy')
	static function WaveCopy(wave:Wave):Wave;

	@:native('WaveCrop')
	static function WaveCrop(wave:RawPointer<Wave>, initSample:Int, finalSample:Int):Void;

	@:native('WaveFormat')
	static function WaveFormat(wave:RawPointer<Wave>, initSample:Int, finalSample:Int, channels:Int):Void;

	@:native('LoadWaveSamples')
	static function LoadWaveSamples(wave:Wave):RawPointer<Float32>;

	@:native('UnloadWaveSamples')
	static function UnloadWaveSamples(samples:RawPointer<Float32>):Void;

	@:native('LoadMusicStream')
	static function LoadMusicStream(fileName:ConstCharStar):Music;

	@:native('LoadMusicStreamFromMemory')
	static function LoadMusicStreamFromMemory(fileType:ConstCharStar, fileData:RawConstPointer<cpp.UInt8>, dataSize:Int):Music;

	@:native('IsMusicReady')
	static function IsMusicReady(music:Music):Bool;

	@:native('UnloadMusicStream')
	static function UnloadMusicStream(music:Music):Void;

	@:native('PlayMusicStream')
	static function PlayMusicStream(music:Music):Void;

	@:native('IsMusicStreamPlaying')
	static function IsMusicStreamPlaying(music:Music):Bool;

	@:native('UpdateMusicStream')
	static function UpdateMusicStream(music:Music):Void;

	@:native('StopMusicStream')
	static function StopMusicStream(music:Music):Void;

	@:native('PauseMusicStream')
	static function PauseMusicStream(music:Music):Void;

	@:native('ResumeMusicStream')
	static function ResumeMusicStream(music:Music):Void;

	@:native('SeekMusicStream')
	static function SeekMusicStream(music:Music, position:Float32):Void;

	@:native('SetMusicVolume')
	static function SetMusicVolume(music:Music, volume:Float32):Void;

	@:native('SetMusicPitch')
	static function SetMusicPitch(music:Music, pitch:Float32):Void;

	@:native('SetMusicPan')
	static function SetMusicPan(music:Music, pan:Float32):Void;

	@:native('GetMusicTimeLength')
	static function GetMusicTimeLength(music:Music):Float32;

	@:native('GetMusicTimePlayed')
	static function GetMusicTimePlayed(music:Music):Float32;

	@:native('LoadAudioStream')
	static function LoadAudioStream(sampleRate:UInt32, sampleSize:UInt32, channels:UInt32):AudioStream;

	@:native('IsAudioStreamReady')
	static function IsAudioStreamReady(stream:AudioStream):Bool;

	@:native('UnloadAudioStream')
	static function UnloadAudioStream(stream:AudioStream):Void;

	@:native('UpdateAudioStream')
	static function UpdateAudioStream(stream:AudioStream, data:RawConstPointer<cpp.Void>, samplesCount:Int):Void;

	@:native('IsAudioStreamProcessed')
	static function IsAudioStreamProcessed(stream:AudioStream):Bool;

	@:native('PlayAudioStream')
	static function PlayAudioStream(stream:AudioStream):Void;

	@:native('PauseAudioStream')
	static function PauseAudioStream(stream:AudioStream):Void;

	@:native('ResumeAudioStream')
	static function ResumeAudioStream(stream:AudioStream):Void;

	@:native('IsAudioStreamPlaying')
	static function IsAudioStreamPlaying(stream:AudioStream):Bool;

	@:native('StopAudioStream')
	static function StopAudioStream(stream:AudioStream):Void;

	@:native('SetAudioStreamVolume')
	static function SetAudioStreamVolume(stream:AudioStream, volume:Float32):Void;

	@:native('SetAudioStreamPitch')
	static function SetAudioStreamPitch(stream:AudioStream, pitch:Float32):Void;

	@:native('SetAudioStreamPan')
	static function SetAudioStreamPan(stream:AudioStream, pan:Float32):Void;

	@:native('SetAudioStreamBufferSizeDefault')
	static function SetAudioStreamBufferSizeDefault(size:Int):Void;

	@:native('SetAudioStreamCallback')
	static function SetAudioStreamCallback(stream:AudioStream, callback:AudioCallback):Void;

	@:native('AttachAudioStreamProcessor')
	static function AttachAudioStreamProcessor(stream:AudioStream, processor:AudioCallback):Void;

	@:native('DetachAudioStreamProcessor')
	static function DetachAudioStreamProcessor(stream:AudioStream, processor:AudioCallback):Void;

	@:native('AttachAudioMixedProcessor')
	static function AttachAudioMixedProcessor(processor:AudioCallback):Void;

	@:native('DetachAudioMixedProcessor')
	static function DetachAudioMixedProcessor(processor:AudioCallback):Void;
}
