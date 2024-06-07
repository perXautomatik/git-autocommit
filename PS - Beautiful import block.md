@(
    @('core', 'Test-ScoopDebugEnabled'),
    @('getopt', 'Resolve-GetOpt'),
    @('help', 'scoop_help'),
    @('Helpers', 'New-IssuePrompt'),
    @('Applications', 'Get-InstalledApplicationInformation'),
    @('buckets', 'Get-KnownBucket'),
    @('Dependencies', 'Resolve-DependsProperty'),
    @('Git', 'Invoke-GitCmd'),
    @('manifest', 'Resolve-ManifestInformation'),
    @('Versions', 'Clear-InstalledVersion')
) | ForEach-Object {
    if (!([bool] (Get-Command $_[1] -ErrorAction 'Ignore'))) {
        Write-Verbose "Import of lib '$($_[0])' initiated from '$PSCommandPath'"
        . (Join-Path $PSScriptRoot "..\lib\$($_[0]).ps1")
    }
}
