strCommand = "cmd /c scrcpy.exe --serial=adb-ea2cdc20-zmIOzz._adb-tls-connect._tcp --window-x=-785 --window-y=720 --window-height=300 --window-borderless --keep-active --turn-screen-off"

For Each Arg In WScript.Arguments
    strCommand = strCommand & " """ & replace(Arg, """", """""""""") & """"
Next

CreateObject("Wscript.Shell").Run strCommand, 0, false
