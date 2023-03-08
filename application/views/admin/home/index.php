<!-- head -->
<?php $this->load->view('admin/admin/head', $this->data) ?>
<?php $this->load->view('admin/message', $this->data) ?>
<!--   Core JS Files   -->
<script src="<?php echo public_url('admin/assets') ?>/js/core/popper.min.js"></script>
<script src="<?php echo public_url('admin/assets') ?>/js/core/bootstrap.min.js"></script>
<script src="<?php echo public_url('admin/assets') ?>/js/plugins/perfect-scrollbar.min.js"></script>
<script src="<?php echo public_url('admin/assets') ?>/js/plugins/smooth-scrollbar.min.js"></script>
<script src="<?php echo public_url('admin/assets') ?>/js/plugins/chartjs.min.js"></script>

<script type="text/javascript" src="<?php echo public_url() ?>site/js/jquery.js"></script>
<script>
    getCovidCountryVN();

    function getCovidCountryVN() {
        fetch('https://api.ncovvn.xyz/cityvn')
            .then(res => res.json())
            .then(data => {
                //console.log(data);

                var place = [];
                var confirmed = [];
                var cur = [];
                var deaths = [];
                var day = [];



                $.each(data, function(id, obj) {
                    //day.push(obj.ngay);
                    place.push(obj.dia_diem);
                    confirmed.push(obj.tong_ca_nhiem);
                    cur.push(obj.hom_nay);
                    deaths.push(obj.tu_vong);
                });
                var ctx = document.getElementById('chart-bars-web');

                new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels: place,
                        datasets: [{
                            label: "Totally Confirm",
                            tension: 0.4,
                            borderWidth: 0,
                            borderRadius: 4,
                            borderSkipped: false,
                            backgroundColor: "#fff",
                            maxBarThickness: 6,
                            data: confirmed,
                            borderColor: "#c9302c",
                            backgroundColor: "#c9302c",

                            fill: true
                        }, {
                            label: "Today",
                            tension: 0.4,
                            borderWidth: 0,
                            borderRadius: 4,
                            borderSkipped: false,
                            backgroundColor: "#fff",
                            maxBarThickness: 6,
                            data: cur,
                            borderColor: "##c55f4e",
                            backgroundColor: "#c55f4e",

                            fill: true
                        }, {
                            label: "Deaths",
                            tension: 0.4,
                            borderWidth: 0,
                            borderRadius: 4,
                            borderSkipped: false,
                            backgroundColor: "#fff",
                            maxBarThickness: 6,
                            data: deaths,
                            borderColor: "#5b5759",
                            backgroundColor: "#5b5759",

                            fill: true
                        }]
                    },
                    options: {
                        responsive: true,
                        maintainAspectRatio: false,
                        plugins: {
                            legend: {
                                display: false,
                            }
                        },
                        interaction: {
                            intersect: false,
                            mode: 'index',
                        },
                        scales: {
                            y: {
                                grid: {
                                    drawBorder: false,
                                    display: false,
                                    drawOnChartArea: false,
                                    drawTicks: false,
                                },
                                ticks: {
                                    suggestedMin: 0,
                                    suggestedMax: 500,
                                    beginAtZero: true,
                                    padding: 15,
                                    font: {
                                        size: 14,
                                        family: "Open Sans",
                                        style: 'normal',
                                        lineHeight: 2
                                    },
                                    color: "#fff"
                                },
                            },
                            x: {
                                grid: {
                                    drawBorder: false,
                                    display: false,
                                    drawOnChartArea: false,
                                    drawTicks: false
                                },
                                ticks: {
                                    display: false
                                },
                            },
                        },
                    },
                });





            }).catch(error => console.log('Error'));
    }
</script>
<script type="text/javascript">
    myChart();

    function myChart() {
        fetch("https://api.ncovvn.xyz/historical")
            .then(res => res.json())
            .then(data => {
                //console.log(data);
                var states = [];
                var confirmed = [];
                var recovered = [];
                var deaths = [];
                var day = [];



                $.each(data, function(id, obj) {
                    day.push(obj.ngay);
                    states.push(obj.state);
                    confirmed.push(obj.new_cases);
                    recovered.push(obj.new_recovered);
                    deaths.push(obj.new_deaths);
                });

                // states.shift();
                // confirmed.shift();
                // recovered.shift();
                // deaths.shift();


                var ctx = document.getElementById('line-chart-web');

                new Chart(ctx, {
                    type: 'line',
                    data: {
                        labels: day,
                        datasets: [{
                                label: "Cases",
                                tension: 0.4,
                                borderWidth: 0,
                                pointRadius: 0,
                                borderWidth: 3,
                                backgroundColor: gradientStroke1,
                                data: confirmed,
                                borderColor: "#c9302c",
                                fill: true,
                                maxBarThickness: 6
                            },
                            {
                                label: "Recovered",
                                tension: 0.4,
                                borderWidth: 0,
                                pointRadius: 0,
                                borderWidth: 3,
                                backgroundColor: gradientStroke1,
                                data: recovered,
                                borderColor: "#28a745",
                                fill: true,
                                maxBarThickness: 6
                            },
                            {
                                label: "Death",
                                tension: 0.4,
                                borderWidth: 0,
                                pointRadius: 0,
                                borderWidth: 3,
                                backgroundColor: gradientStroke1,
                                data: deaths,
                                borderColor: "#343a40",
                                fill: true,
                                maxBarThickness: 6
                            }
                        ],
                    },
                    options: {
                        responsive: true,
                        maintainAspectRatio: false,
                        plugins: {
                            legend: {
                                display: false,
                            }
                        },
                        interaction: {
                            intersect: false,
                            mode: 'index',
                        },
                        scales: {
                            y: {
                                grid: {
                                    drawBorder: false,
                                    display: true,
                                    drawOnChartArea: true,
                                    drawTicks: false,
                                    borderDash: [5, 5]
                                },
                                ticks: {
                                    display: true,
                                    padding: 10,
                                    color: '#b2b9bf',
                                    font: {
                                        size: 11,
                                        family: "Open Sans",
                                        style: 'normal',
                                        lineHeight: 2
                                    },
                                }
                            },
                            x: {
                                grid: {
                                    drawBorder: false,
                                    display: false,
                                    drawOnChartArea: false,
                                    drawTicks: false,
                                    borderDash: [5, 5]
                                },
                                ticks: {
                                    display: true,
                                    color: '#b2b9bf',
                                    padding: 20,
                                    font: {
                                        size: 11,
                                        family: "Open Sans",
                                        style: 'normal',
                                        lineHeight: 2
                                    },
                                }
                            },
                        },
                    },
                });




            });

    }
</script>
<div class="row">
    <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
        <div class="card">
            <div class="card-body p-3">
                <div class="row">
                    <div class="col-8">
                        <div class="numbers">
                            <p class="text-sm mb-0 text-capitalize font-weight-bold">Today's Money</p>
                            <h5 class="font-weight-bolder mb-0">
                                <?php echo number_format($amount_to_day) ?>
                                <span class="text-success text-sm font-weight-bolder">VNĐ</span>
                            </h5>
                        </div>
                    </div>
                    <div class="col-4 text-end">
                        <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                            <i class="ni ni-money-coins text-lg opacity-10" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
        <div class="card">
            <div class="card-body p-3">
                <div class="row">
                    <div class="col-8">
                        <div class="numbers">
                            <p class="text-sm mb-0 text-capitalize font-weight-bold">Month Money</p>
                            <h5 class="font-weight-bolder mb-0">
                                <?php echo number_format($tongtien_thang) ?>
                                <span class="text-success text-sm font-weight-bolder">VNĐ</span>
                            </h5>
                        </div>
                    </div>
                    <div class="col-4 text-end">
                        <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                            <i class="ni ni-world text-lg opacity-10" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
        <div class="card">
            <div class="card-body p-3">
                <div class="row">
                    <div class="col-8">
                        <div class="numbers">
                            <p class="text-sm mb-0 text-capitalize font-weight-bold">Views</p>
                            <h5 class="font-weight-bolder mb-0">
                                <?php echo $amount_total_view ?>
                                <span class="text-danger text-sm font-weight-bolder"> <i class="fa fa-arrow-up text-success"></i></span>
                            </h5>
                        </div>
                    </div>
                    <div class="col-4 text-end">
                        <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                            <i class="ni ni-paper-diploma text-lg opacity-10" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-sm-6">
        <div class="card">
            <div class="card-body p-3">
                <div class="row">
                    <div class="col-8">
                        <div class="numbers">
                            <p class="text-sm mb-0 text-capitalize font-weight-bold">Ordered</p>
                            <h5 class="font-weight-bolder mb-0">
                                <?php echo $amount_total_qty ?>
                                <span class="text-success text-sm font-weight-bolder">product</span>
                            </h5>
                        </div>
                    </div>
                    <div class="col-4 text-end">
                        <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                            <i class="ni ni-cart text-lg opacity-10" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row mt-4">
    <div class="col-lg-7 mb-lg-0 mb-4">
        <div class="card">
            <div class="card-body p-3">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="d-flex flex-column h-100">
                            <p class="mb-1 pt-2 text-bold">Built by developers</p>
                            <h5 class="font-weight-bolder">LocalWare Dashboard</h5>
                            <p class="mb-5">From colors, cards, typography to complex elements, you will find the full documentation.</p>
                            <a class="text-body text-sm font-weight-bold mb-0 icon-move-right mt-auto" href="javascript:;">
                                Read More
                                <i class="fas fa-arrow-right text-sm ms-1" aria-hidden="true"></i>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-5 ms-auto text-center mt-5 mt-lg-0">
                        <div class="bg-gradient-primary border-radius-lg h-100">
                            <img src="<?php echo public_url('admin/assets') ?>/img/shapes/waves-white.svg" class="position-absolute h-100 w-50 top-0 d-lg-block d-none" alt="waves">
                            <div class="position-relative d-flex align-items-center justify-content-center h-100">
                                <img class="w-100 position-relative z-index-2 pt-4" src="<?php echo public_url('admin/assets') ?>/img/illustrations/rocket-white.png" alt="rocket">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-5">
        <div class="card h-100 p-3">
            <div class="overflow-hidden position-relative border-radius-lg bg-cover h-100" style="background-image: url('<?php echo public_url('admin/assets') ?>/img/ivancik.jpg');">
                <span class="mask bg-gradient-dark"></span>
                <div class="card-body position-relative z-index-1 d-flex flex-column h-100 p-3">
                    <h5 class="text-white font-weight-bolder mb-4 pt-2">Visit the website to shop</h5>
                    <p class="text-white">The ability to travel from one retailer to another while sitting at home has become a reality. Any product can now be ordered online.</p>
                    <a class="text-white text-sm font-weight-bold mb-0 icon-move-right mt-auto" href="<?php echo site_url() ?>">
                        Continue Shopping
                        <i class="fas fa-arrow-right text-sm ms-1" aria-hidden="true"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row mt-4">
    <div class="col-lg-5 mb-lg-0 mb-4">
        <div class="card z-index-2">
            <div class="card-body p-6">
                <div class="bg-gradient-dark border-radius-lg py-3 pe-1 mb-3">
                    <div class="chart">
                        <canvas id="chart-bars-web" class="chart-canvas" height="190" width="421"></canvas>
                    </div>
                </div>
                <h6 class="ms-2 mt-4 mb-0">Keep an eye on the situation with Covid-19 in Vietnamese cities. </h6>
                <div class="container border-radius-lg">

                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-7">
        <div class="card z-index-2">
            <div class="card-header pb-0">
                <h6>Statistics for Covid-19</h6>
                <p class="text-sm">
                    <i class="fa fa-arrow-up text-success"></i>
                    <span class="font-weight-bold">VietNam</span> in 2021
                </p>
            </div>
            <div class="card-body p-3">
                <div class="chart">
                    <canvas id="line-chart-web" height="300" class="chart-canvas"></canvas>

                </div>
            </div>
        </div>
    </div>
</div>
<div class="row my-4">
    <div class="col-lg-8 col-md-6 mb-md-0 mb-4">
        <div class="card">
            <div class="card-header pb-0">
                <div class="row">
                    <div class="col-lg-6 col-7">
                        <h6>Product</h6>
                        <p class="text-sm mb-0">
                            <i class="fa fa-check text-info" aria-hidden="true"></i>
                            <span class="font-weight-bold ms-1"><?php echo $total_rows ?> done</span> this month
                        </p>
                    </div>
                    <div class="col-lg-6 col-5 my-auto text-end">
                        <div class="dropdown float-lg-end pe-4">
                            <a class="cursor-pointer" id="dropdownTable" data-bs-toggle="dropdown" aria-expanded="false">

                            </a>
                            <ul class="dropdown-menu px-2 py-3 ms-sm-n4 ms-n5" aria-labelledby="dropdownTable">
                                <li><a class="dropdown-item border-radius-md" href="javascript:;">Action</a></li>
                                <li><a class="dropdown-item border-radius-md" href="javascript:;">Another action</a></li>
                                <li><a class="dropdown-item border-radius-md" href="javascript:;">Something else here</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body px-0 pb-2">
                <div class="table-responsive">
                    <table class="table align-items-center mb-0">
                        <thead>
                            <tr>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">ID</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">IMAGE</th>
                                <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">PRICE</th>
                                <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">VIEW</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($product_buy as $row) : ?>
                                <tr>
                                    <td>
                                        <div class="d-flex px-2 py-1">
                                            <div>
                                                <span><?php echo $row->id ?></span> &nbsp;
                                            </div>
                                            <div class="d-flex flex-column justify-content-center">
                                                <h6 class="mb-0 text-sm"><?php echo  $row->name ?></h6>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-thumbnail">

                                        <img src="<?php echo base_url('upload/product/' .  $row->image_link) ?>" alt="team1" style="height: 50px;">



                                    </td>
                                    <td class="align-middle text-center text-sm">
                                        <span class="text-xs font-weight-bold"> <?php number_format($row->price) ?></span>
                                    </td>
                                    <td class="align-middle">
                                        <div class="progress-wrapper w-75 mx-auto">
                                            <div class="progress-info">
                                                <div class="progress-percentage">
                                                    <span class="text-xs font-weight-bold"><?php echo $row->view ?></span>
                                                </div>
                                            </div>
                                            <div class="progress">
                                                <div class="progress-bar bg-gradient-info w-60" role="progressbar" aria-valuenow="<?php echo $row->view ?>" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            <?php endforeach; ?>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-4 col-md-6">
        <div class="card h-100">
            <div class="card-header pb-0">
                <h6>Orders overview</h6>
                <p class="text-sm">
                    <i class="fa fa-arrow-up text-success" aria-hidden="true"></i>
                    <span class="font-weight-bold"><?php echo number_format($tongtien_thang) ?></span> this month
                </p>
            </div>
            <div class="card-body p-3">
                <div class="timeline timeline-one-side">
                    <?php foreach ($list as $row) : ?>
                        <div class="timeline-block mb-3">
                            <span class="timeline-step">
                                <img src="<?php echo base_url('upload/product/' . $row->image_link) ?>" alt="" style="height: 18px;">
                            </span>
                            <div class="timeline-content">
                                <h6 class="text-dark text-sm font-weight-bold mb-0"><?php echo number_format($row->amount) ?> VNĐ - <?php echo $row->product_name ?></h6>
                                <p class="text-secondary font-weight-bold text-xs mt-1 mb-0"><?php echo get_date($row->created) ?></p>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </div>
</div>