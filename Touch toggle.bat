set "touchscreenid=HID\VID_04F3&PID_2085&Col01"
devcon status "%touchscreenid%" | findstr "running"
if %errorlevel% == 0 (
    devcon disable "%touchscreenid%"
) else (
    devcon enable "%touchscreenid%"
)