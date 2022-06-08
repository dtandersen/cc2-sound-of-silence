set SOURCE_AUDIO=source\audio
set CONTENT_AUDIO=content\audio
set LOW="volume=-20dB"
set MED="volume=-10dB"
set NORMAL="volume=1"
set SILENT="volume=0.05"

REM rmdir /s /q content
mkdir content\audio

ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_vehicle01_rpm_01_loop.wav -filter:a %SILENT% -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_vehicle01_rpm_01_loop.ogg
ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_vehicle01_rpm_02_loop.wav -filter:a %SILENT% -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_vehicle01_rpm_02_loop.ogg
ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_vehicle02_rpm_01_loop.wav -filter:a %SILENT% -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_vehicle02_rpm_01_loop.ogg
ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_vehicle02_rpm_02_loop.wav -filter:a %SILENT% -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_vehicle02_rpm_02_loop.ogg

REM "ambient" sounds
ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_ocean_loop.wav -filter:a %SILENT% -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_ocean_loop.ogg


ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_turbine01_noise_loop.wav -filter:a %NORMAL% -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_turbine01_noise_loop.ogg
ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_turbine01_rpm_loop.wav -filter:a %NORMAL% -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_turbine01_rpm_loop.ogg

ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_turbine02_noise_loop.wav -filter:a %NORMAL% -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_turbine02_noise_loop.ogg

ffmpeg -y -i %SOURCE_AUDIO%\wind_outdoor_high.wav -filter:a %SILENT% -acodec libvorbis %CONTENT_AUDIO%\wind_outdoor_high.ogg
ffmpeg -y -i %SOURCE_AUDIO%\wind_outdoor_low.wav -filter:a %SILENT% -acodec libvorbis %CONTENT_AUDIO%\wind_outdoor_low.ogg
ffmpeg -y -i %SOURCE_AUDIO%\wind_outdoor_medium.wav -filter:a %SILENT% -acodec libvorbis %CONTENT_AUDIO%\wind_outdoor_medium.ogg

copy nul mod.xml