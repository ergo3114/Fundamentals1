return "Do not run this as is. This is for testing purposes only."

############
# Get-Help #
############

# First you should update your help files
Update-Help
Clear-Host

# Let's see what Get-Help does
Get-Help

# Let's see what more information we can get out of Get-Help
Get-Help Get-Help

# Show full help file
Get-Help Get-Help -Full

# Show examples of how to use the command
# Note: Run in console
Get-Help Get-Help -Examples

# Go online for up-to-date help documents
Get-Help Get-Help -Online

# The console window isn't helping my vision
# Note: has to be done in Windows PowerShell console
Get-Help Get-Help -Full -ShowWindow

###############
# Get-Command #
###############

# What does Get-Command do?
# Note: Run in console
Get-Help Get-Command -Online

# Let's see what information we can get about Get-Help
Get-Command Get-Help

# Get 5 command with the Get verb
Get-Command -Verb Get -TotalCount 5

# Get 5 command with the Process noun
Get-Command -Noun Process

# Tie in what we know about Get-Help
Get-Help Get-Process

# Find information about the alias cls
Get-Command cls -CommandType Alias

##############
# Get-Member #
##############

# Start off by seeing what would be returned with a Get-Member
Get-Command | Get-Member

# Enclose a command in parenthesis to "run" the command
# Basically stores command in temp variable

# Use a property to find the command type
(Get-Command -Name Get-Help).CommandType

# Use a property to find what module gives me this command
(Get-Command -Name Get-Help).ModuleName

# Use a method
(Get-Command).GetType()