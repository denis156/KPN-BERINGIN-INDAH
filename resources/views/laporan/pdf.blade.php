<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laporan Pendapatan</title>

    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        img.logo {
            width: 120px;
        }
        .text-center {
            text-align: center;
        }
    </style>
</head>
<body>
    <table>
        <tr>
            <td colspan="2">
                <div style="text-align: center;">
                    <img src="{{ public_path($setting->path_logo) }}" alt="{{ $setting->path_logo }}" width="150">
                </div>
            </td>
            <td colspan="4" class="text-center">
                <h3>Laporan Pendapatan</h3>
                <p>
                    Tanggal {{ tanggal_indonesia($awal, false) }}
                    s/d
                    Tanggal {{ tanggal_indonesia($akhir, false) }}
                </p>
            </td>
        </tr>
    </table>

    <table>
        <thead>
            <tr>
                <th width="5%">No</th>
                <th>Tanggal</th>
                <th>Penjualan</th>
                <th>Pembelian</th>
                <th>Pengeluaran</th>
                <th>Pendapatan</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($data as $row)
                <tr>
                    @foreach ($row as $col)
                        <td>{{ $col }}</td>
                    @endforeach
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
