<?php
include "Connect.php";
?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<style>
    *
     {
        font-family: cursive;
        margin: 0;
        padding: 0;

    } 

    .card-title {

       text-align: center;
       text-transform: uppercase;
       color: black ;
       text-decoration: blink;
    }

    h6 {

        text-align: center;
    }

    .form-control:hover {

        background: #00D7FD;
    }


</style>


</head>

<body>

    <div class="container-fluid">
        <div class=" left">
            <div class="col-md-6">
                <br>
                <div class="card-body">
                    <h3 class="card-title ">WILAYAH JAKARTA DAN JAWA BARAT</h3>
                    <h6>by Faturachman Achmad</h6>
                    <div class="form-group">
                        <select class="form-control" id="id_provinsi">
                            <option>
                           <h5>>>>Pilih Provinsi<<<</h5>
                        </option>
                            <?php
                            $sql = mysqli_query($connect, "SELECT * FROM tbl_provinsi order by kode_provinsi ASC") or die(mysqli_error($connect));
                            while ($dt = mysqli_fetch_array($sql)) {
                            ?>
                                <option value="<?php echo $dt['kode_provinsi'] ?>"><?php echo $dt['nama_provinsi'] ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <select class="form-control" id="id_kabupaten">
                            <option>>>>Pilih Kabkota<<<</option>
                        </select>
                    </div>
                </div>

            </div>

        </div>
    </div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    <script>
        $(document).ready(function() {
            $('#id_provinsi').on('change', function() {
                var id_provinsi = $(this).val();
                $.ajax({
                    url: 'location.php',
                    type: "POST",
                    data: {
                        modul: 'Kabupaten',
                        id: id_provinsi
                    },
                    success: function(respond) {
                        $("#id_kabupaten").html(respond);
                    },
                    error: function() {
                        alert("Gagal Mengambil Data");
                    }
                })
            })
        });
    </script>

</body>

</html>