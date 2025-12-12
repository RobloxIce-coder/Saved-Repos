$name = 'Daniar';
$numbers = @(2, 4, 6, 8, 10)
Write-Host "Halo, $name!" -ForeGround Magenta
Write-Host "Numbers: $($numbers)"
$div_by_two = $numbers | ForEach-Object {$_ / 2}
Write-Host "Numbers divided by two: $($div_by_two)"
Write-Host "Numbers join with ',': $($numbers-join ', ')"
$objek = [PSCustomObject]@{
  nama = "Ahmad Daniar"
  umur = "16 tahun"
  cita_cita = "Developer IT"
}
Write-Host "Halo!, nama saya $($objek.nama), umur saya $($objek.umur), dan cita-cita saya ingin menjadi seorang $
($objek.cita_cita) :D!"