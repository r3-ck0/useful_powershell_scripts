function Format-Xml {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [xml]$XmlContent
    )

    $stringWriter = New-Object System.IO.StringWriter
    $xmlWriter = New-Object System.Xml.XmlTextWriter $stringWriter
    $xmlWriter.Formatting = 'Indented'
    $XmlContent.WriteTo($xmlWriter)
    $xmlWriter.Flush()
    $stringWriter.ToString()
}
