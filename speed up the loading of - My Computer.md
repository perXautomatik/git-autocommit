when i open "my computer" on my windows pc, there can be a few seconds delay before it properly loads up, i think it is because of my many network partitions that i have assigned drive letters to that the file browser then must parse, is there some way i could help windows speed this process up, by maybe pre indexing the network locations? i don't actually want to index the file content on this drives as this is rapidly changing and of no relevance, but the folders stay the same at the same network locations

Copilot

To speed up the loading of “My Computer” on your Windows PC, especially when you have multiple network drives, you can try the following steps:

1. **Disable Remote Differential Compression**: This feature can sometimes slow down the transfer of data over a network. You can turn it off by:
    
    - Pressing the Windows key and typing “Turn Windows features on or off”.
    - Unchecking “Remote Differential Compression” and clicking OK.
2. **Clear DNS Cache**: Outdated DNS records can cause delays.
    
    - Open Command Prompt as an Administrator.
    - Type `ipconfig /flushdns` and press Enter.
3. **Adjust Services Startup Type**: Some services can be set to start automatically with a delay to improve system startup.
    
    - Press the Windows key + R, type `services.msc`, and press Enter.
    - Find services related to network operations and set their Startup type to “Automatic (Delayed Start)”.
4. **Modify Indexing Options**: While you don’t want to index the contents of the drives, ensuring that Windows isn’t trying to index them at all might help.
    
    - Go to Control Panel > Indexing Options.
    - Click Modify and uncheck the network drives you don’t want to be indexed.
5. **Optimize Folder Options**: Set the File Explorer to open to “This PC” instead of “Quick Access”, which can speed up the loading time.
    
    - Open File Explorer, click on View, then Options.
    - In the General tab, under “Open File Explorer to:”, select “This PC”.
6. **Network Drive Mapping**: Ensure that the network drives are mapped correctly and that the credentials are stored to avoid authentication delays.
    

Remember that network speed can also be affected by other factors such as network hardware, the performance of the network itself, and the remote server’s response time. If the issue persists, it might be worth checking these aspects as well. If you’re comfortable with advanced settings, you could also consider tweaking the Group Policy settings related to network drives. However, this should be done cautiously and preferably with expert guidance.

[1![](blob:https://www.bing.com/407cb2c2-5c3b-4f49-9141-484da05eff32)answers.microsoft.com](https://answers.microsoft.com/en-us/windows/forum/all/extremely-slow-mapped-network-drive-access-to/d4daefe5-cc65-4fd1-a7a9-81e7697d7903)[2![](blob:https://www.bing.com/326e66d4-8751-49f8-b19c-9568c590313f)superuser.com](https://superuser.com/questions/1645533/mapped-network-drives-making-windows-10-file-explorer-extremely-slow)[3![](blob:https://www.bing.com/326e66d4-8751-49f8-b19c-9568c590313f)superuser.com](https://superuser.com/questions/1107793/accessing-network-drives-is-too-slow)

Du

Could this steps be turned into a powershell script? (except the flushing of the dns cache ) the steps outlined could possibly be separate functions that then the main script calls in sequence

Copilot

Certainly! Below is a PowerShell script that encapsulates the steps outlined, except for flushing the DNS cache. Each step is a separate function that the main script calls in sequence. You can run this script with administrative privileges to apply the optimizations.

```powershell
# Function to Disable Remote Differential Compression
function Disable-RDC {
    Disable-WindowsOptionalFeature -Online -FeatureName "MSRDC-Infrastructure"
}

# Function to Adjust Services Startup Type
function Adjust-ServicesStartupType {
    Set-Service -Name "YourServiceName" -StartupType "AutomaticDelayedStart"
}

# Function to Modify Indexing Options
function Modify-IndexingOptions {
    $indexingOptions = New-Object -ComObject "Microsoft.Windows.Search.Indexer"
    $indexingOptions.Stop()
    # Add code to modify indexing options here
    $indexingOptions.Start()
}

# Function to Optimize Folder Options
function Optimize-FolderOptions {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -Value 1
}

# Function to Map Network Drives Correctly
function Map-NetworkDrives {
    # Add code to map network drives here
}

# Main script to call the functions
function Optimize-System {
    Disable-RDC
    Adjust-ServicesStartupType
    Modify-IndexingOptions
    Optimize-FolderOptions
    Map-NetworkDrives
}

# Call the main optimization function
Optimize-System
```

Please replace `"YourServiceName"` with the actual name of the service you wish to adjust. For mapping network drives and modifying indexing options, you’ll need to add the specific commands that suit your configuration.

Remember to test the script in a controlled environment before running it on a production system, as it will make changes to system settings. If you’re not familiar with PowerShell scripting, it’s recommended to consult with an IT professional to tailor the script to your specific needs.