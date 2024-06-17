<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Ample lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Ample admin lite dashboard bootstrap 5 dashboard template">
    <meta name="description"
        content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>Data Detail Order</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="{{ url('') }}/template/plugins/images/favicon.png">
    <!-- Custom CSS -->
    <link href="{{ url('') }}/template/plugins/bower_components/chartist/dist/chartist.min.css" rel="stylesheet">
    <link rel="stylesheet"
        href="{{ url('') }}/template/plugins/bower_components/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.css">
    <!-- Custom CSS -->
    <link href="{{ url('') }}/template/css/style.min.css" rel="stylesheet">
</head>

<body>

    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        @include('Layout.nav')
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        @include('Layout.side')
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb bg-white">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Dashboard</h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <div class="d-md-flex">
                            <ol class="breadcrumb ms-auto">
                                <li><a href="#" class="fw-normal">Dashboard</a></li>
                            </ol>

                        </div>
                    </div>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Three charts -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- PRODUCTS YEARLY SALES -->
                <!-- ============================================================== -->

                <!-- ============================================================== -->
                <!-- RECENT SALES -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-md-12 col-lg-12 col-sm-12">
                        <div class="white-box">
                            <div class="d-md-flex mb-3">
                                <h3 class="box-title mb-0">Data Detail Order</h3>
                                <div class="d-flex ">
                                    <i data-feather="download"></i>
                                </div>
                            </div>
                            <div class="card-body px-0 pb-0">
                                <div class="table-responsive">
                                    <table class='table mb-0' id="table1">
                                        <thead>
                                            <tr>
                                                <th scope="col">No</th>
                                                <th scope="col">Order Id</th>
                                                <th scope="col">Produk Id</th>
                                                <th scope="col">Harga</th>
                                                <th scope="col">Jumlah</th>
                                                <th scope="col">Charge</th>
                                                <th scope="col">Total Harga</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            @php($counter = 1) @foreach ($detail as $d)
                                                <tr>
                                                    <td>{{ $counter }}</td>
                                                    <td>{{ $d->order_id }}</td>
                                                    <td>{{ $d->product->nama_produk }}</td>
                                                    <td>{{ $d->harga }}</td>
                                                    <td>{{ $d->jumlah }}</td>
                                                    <td>{{ $d->charge }}</td>
                                                    <td>{{ $d->total_harga }}</td>


                                                </tr>

                                                @php($counter++)
                                            @endforeach

                                        </tbody>


                                    </table>

                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>


            <div class="row">

                <div class="col-md-12 col-lg-12 col-sm-12">

                    <div class="white-box">

                        <h3 class="box-title mb-0">Total Order</h3>

                        <div class="card-body px-0 pb-0">

                            <ul>

                                <li>Total Produk: {{ $total_produk }}</li>

                                <li>Total Harga: {{ $total_harga }}</li>

                                <li>Total Jumlah: {{ $total_jumlah }}</li>

                                <li>Total Charge: {{ $total_charge }}</li>

                                <li>Total Harga All: {{ $total_harga_all }}</li>

                            </ul>

                        </div>

                    </div>

                </div>
                <!-- Tombol untuk membuka modal -->

                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Detail
                    Order</button>


                <!-- Modal -->

                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                    aria-hidden="true">

                    <div class="modal-dialog">

                        <div class="modal-content">

                            <div class="modal-header">

                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>

                                <h4 class="modal-title" id="myModalLabel">Detail Order</h4>

                            </div>

                            <div class="modal-body">

                                <form action="{{ url('Transactions/Pay' ) }}" method="POST"
                                    enctype="multipart/form-data">
                                    @csrf
                                    <div class="mb-3">
                                        <label for="">Nama Anda</label>
                                        <input type="text" class="form-control"
                                            id="editNamaProduk{{ $d->user_id }}" name="user_id"
                                            value="{{ $d->user_id }}" readonly>
                                    </div>

                                    <div class="form-group">

                                        <label for="total_produk">Total Produk</label>

                                        <input type="text" class="form-control" name="product_id"
                                            value="{{ $total_produk }}" readonly>

                                    </div>

                                    <div class="form-group">

                                        <label for="total_harga">Total Harga</label>

                                        <input type="text" class="form-control" name="harga"
                                            value="{{ $total_harga }}" readonly>

                                    </div>

                                    <div class="form-group">

                                        <label for="total_jumlah">Total Jumlah</label>

                                        <input type="text" class="form-control" 
                                            value="{{ $total_jumlah }}" readonly name="jumlah">

                                    </div>

                                    <div class="form-group">

                                        <label for="total_charge">Total Charge</label>

                                        <input type="text" class="form-control" 
                                            value="{{ $total_charge }}" readonly name="charge">

                                    </div>

                                    <div class="form-group">

                                        <label for="total_harga_all">Total Yang Harus Anda Bayarkan</label>

                                        <input type="text" class="form-control" id="total_harga_all" value="{{ $total_harga_all }}" readonly name="total_harga">

                                    </div>

                                    <div class="mb-3">

                                        <label for="">Anda membayar</label>

                                      <input type="number" class="form-control" id="bayar" name="bayar" placeholder="Anda membayar" >

                                    </div>
                                    <div class="mb-3">

                                        <label for="">Sisa yang harus anda bayarkan</label>

                                        <input type="text" class="form-control" id="sisa_bayar" name="sisa_bayar" readonly>

                                    </div>
                                    <div class="mb-3">
                                        <label for="">Tanggal Transaksi</label>
                                        <input type="date" class="form-control"
                                            id="editHarga{{ $d->tanggal_transaksi }}" name="tanggal_transaksi">
                                    </div>
                                    <div class="mb-3">

    <label for="">Tanggal Selesai</label>

    <input type="date" class="form-control" id="tanggal_selesai" name="tanggal_selesai" readonly>

</div>
                                    <div>
                                        <label for="">No Rekening : 1234567890</label>
                                    </div>
                                    <div class="mb-3">
                                        <label for="">Bukti Bayar</label>
                                        <input type="file" class="form-control"
                                            id="editHarga{{ $d->bukti_bayar }}" name="bukti_bayar"
                                            value="{{ $d->bukti_bayar }}">

                                    </div>
                                   



                                  <div class="mb-3">

    <label for="">Status Produksi</label>

 <input type="text" name="status_produksi" id="" class="form-control" value="Baru Masuk" readonly>
</div>
                                    <div class="mb-3">

                                        <label for="">Status Transaksi</label>

                                        <input type="text" class="form-control" 
                                            name="status_transaksi" id="status_transaksi" readonly>

                                    </div>


                                    <button type="submit" class="btn btn-primary">Save Changes</button>
                                </form>

                            </div>

                            <div class="modal-footer">

                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                            </div>

                        </div>

                    </div>

                </div>
            </div>
            <!-- ============================================================== -->
            <!-- Recent Comments -->
            <!-- ============================================================== -->

            <!-- /.col -->
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- End Container fluid  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- footer -->
    <!-- ============================================================== -->
    @include('Layout.footer')
    <!-- ============================================================== -->
    <!-- End footer -->
    <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Page wrapper  -->
    <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="{{ url('') }}/template/plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="{{ url('') }}/template/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="{{ url('') }}/template/js/app-style-switcher.js"></script>
    <script src="{{ url('') }}/template/plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
    <!--Wave Effects -->
    <script src="{{ url('') }}/template/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="{{ url('') }}/template/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="{{ url('') }}/template/js/custom.js"></script>
    <!--This page JavaScript -->
    <!--chartis chart-->
    <script src="{{ url('') }}/template/plugins/bower_components/chartist/dist/chartist.min.js"></script>
    <script
        src="{{ url('') }}/template/plugins/bower_components/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js">
    </script>
    <script src="{{ url('') }}/template/js/pages/dashboards/dashboard1.js"></script>
<script>

  // Get the input fields

  const totalHargaAllInput = document.getElementById('total_harga_all');

  const bayarInput = document.getElementById('bayar');

  const sisaBayarInput = document.getElementById('sisa_bayar');


  // Add an event listener to the bayar input field

  bayarInput.addEventListener('input', () => {

    // Get the values

    const totalHargaAll = parseFloat(totalHargaAllInput.value);

    const bayar = parseFloat(bayarInput.value);


    // Calculate the sisa_bayar value

    const sisaBayar = totalHargaAll - bayar;


    // Set the sisa_bayar value

    sisaBayarInput.value = sisaBayar;


    // Check if the sisa_bayar value is 0

    if (sisaBayar === 0) {

      // Set the status_transaksi value to "Lunas"

      document.getElementById('status_transaksi').value = 'Lunas';

    } else {

      // Set the status_transaksi value to "Belum Lunas"

      document.getElementById('status_transaksi').value = 'Belum Lunas';

    }

  });

</script>

<script>

  // Get the input fields

  const tanggalTransaksiInput = document.getElementById('editHarga{{ $d->tanggal_transaksi }}');

  const tanggalSelesaiInput = document.getElementById('tanggal_selesai');


  // Add an event listener to the tanggalTransaksiInput input field

  tanggalTransaksiInput.addEventListener('input', () => {

    // Get the value

    const tanggalTransaksi = new Date(tanggalTransaksiInput.value);


    // Calculate the tanggal_selesai value

    const tanggalSelesai = new Date(tanggalTransaksi);

    tanggalSelesai.setDate(tanggalSelesai.getDate() + 14);


    // Set the tanggal_selesai value

    tanggalSelesaiInput.valueAsDate = tanggalSelesai;

  });

</script>

</body>

</html>
