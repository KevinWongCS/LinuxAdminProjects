name: kevin wong

date: 06/11/2021

desc: 0x0000011b error message while trying to access printer connected to a computer on the same network on Windows 10

### Adding Printer
- Control Panel > Add a printer > The printer that I want isn't listed > Select a shared printer by name > 0x0000011b error message
  - Don't have a current fix
  - Google searches reveal security configurations need to be configured to get this method to work.
  - https://www.youtube.com/watch?v=5R15NKBU9co possible fix but on Windows 11

### Finding the Printer Path
- Search > View network computers and devices > locate other computer
  - the path will be something "\\<computer name>\<printer name>
  - You can construct a local port with the path above according to https://www.youtube.com/watch?v=QwnOh69dlM8, but I haven't had any luck with this method

### Network Settings
- Control Panel > Network and Internet > Change Advanced Sharing Settings
  - Enable under "Guest or Public": enable "Turn on network discovery" and "Turn on file and printer sharing" 
  - Under "All Networks": disable "Turn off Password protected sharing" for convience

### Windows Credentials
- Control Panel > Windows Credentials > Add a Windows Credential
  - Create a User name and Password so that client computer and access the other computer on the network
