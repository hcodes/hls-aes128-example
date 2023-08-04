# HLS problems with AES-128 on webOS

Hint:
`ffmpeg -i sample.mp4 -hls_time 9 -hls_key_info_file enc.keyinfo -hls_playlist_type vod -hls_segment_type fmp4 -hls_segment_filename "sample-%d.ts" sample.m3u8`

HLS playlist links:
- AES-128: https://hcodes.github.io/hls-aes128-example/264-aes/sample.m3u8

- fMpeg: https://hcodes.github.io/hls-aes128-example/264-fmpeg/sample.m3u8

- fMpeg + AES-128 + IV, variant 1: https://hcodes.github.io/hls-aes128-example/264-fmpeg-aes/sample-aes-1.m3u8

- fMpeg + AES-128 + IV, variant 2: https://hcodes.github.io/hls-aes128-example/264-fmpeg-aes/sample-aes-2.m3u8

- fMpeg + AES-128 + IV, variant 3: https://hcodes.github.io/hls-aes128-example/264-fmpeg-aes/sample-aes-3.m3u8

- fMpeg + AES-128 + IV, variant 4: https://hcodes.github.io/hls-aes128-example/264-fmpeg-aes/sample-aes-4.m3u8

- fMpeg + AES-128 + no IV, variant 1: https://hcodes.github.io/hls-aes128-example/264-fmpeg-aes/sample-aes-no-iv-1.m3u8

- fMpeg + AES-128 + no IV, variant 2: https://hcodes.github.io/hls-aes128-example/264-fmpeg-aes/sample-aes-no-iv-2.m3u8

- fMpeg + AES-128 + no IV, variant 3: https://hcodes.github.io/hls-aes128-example/264-fmpeg-aes/sample-aes-no-iv-3.m3u8

- fMpeg + AES-128 + no IV, variant 4: https://hcodes.github.io/hls-aes128-example/264-fmpeg-aes/sample-aes-no-iv-4.m3u8
