# PowerShell Script to Keep Windows Active

# Set the interval between simulated key presses (in milliseconds)
$interval = 60000  # 60 seconds

# Load necessary assembly for sending key press
Add-Type -AssemblyName System.Windows.Forms

# Hide PowerShell window
Add-Type -Name Window -Namespace Console -MemberDefinition '
[DllImport("Kernel32.dll")]
public static extern IntPtr GetConsoleWindow();

[DllImport("user32.dll")]
public static extern bool ShowWindow(IntPtr hWnd, Int32 nCmdShow);
'
$consolePtr = [Console.Window]::GetConsoleWindow()
[Console.Window]::ShowWindow($consolePtr, 0)  # 0 = Hide, 1 = Show

# Function to simulate a key press
Function Send-KeyPress {
    [System.Windows.Forms.SendKeys]::SendWait("{SCROLLLOCK}")
    [System.Windows.Forms.SendKeys]::SendWait("{SCROLLLOCK}")
}

# Loop to keep sending a key press at the defined interval
while ($true) {
    Send-KeyPress
    Start-Sleep -Milliseconds $interval
}
