{{-- @extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <h1>Forget Password Email</h1>
                    </div>

                    <div class="card-body">



                        You can reset password from bellow link:

                        <div class="row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <a href="{{ route('reset.password.get', $token) }}">Reset Password</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection --}}
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description"
        content="Zeta admin is super flexible, powerful, clean &amp; modern responsive bootstrap 5 admin template with unlimited possibilities." />
    <meta name="keywords"
        content="admin template, Zeta admin template, dashboard template, flat admin template, responsive admin template, web app" />
    <meta name="author" content="pixelstrap" />
    <link rel="icon" href="../assets/images/favicon-icon.png" type="image/x-icon" />
    <link rel="shortcut icon" href="../assets/images/favicon-icon.png" type="image/x-icon" />
    <title>Zeta - Premium Admin Template</title>
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900"
        rel="stylesheet" />
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet" />
    <link
        href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet" />
    <style type="text/css">
        body {
            width: 650px;
            font-family: work-Sans, sans-serif;
            background-color: #f6f7fb;
            display: block;
        }

        a {
            text-decoration: none;
        }

        span {
            font-size: 14px;
        }

        p {
            font-size: 13px;
            line-height: 1.7;
            letter-spacing: 0.7px;
            margin-top: 0;
        }

        .text-center {
            text-align: center;
        }

        h6 {
            font-size: 16px;
            margin: 0 0 18px 0;
        }
    </style>
</head>

<body style="margin: 30px auto">
    <table style="width: 100%">
        <tbody>
            <tr>
                <td>
                    <table style="background-color: #f6f7fb; width: 100%">
                        <tbody>
                            <tr>
                                <td>
                                    <table style="width: 650px; margin: 0 auto; margin-bottom: 30px">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <img src="../assets/images/logo/small-logo.png"
                                                        alt="Logo" />LOGO
                                                </td>
                                                <td style="text-align: right; color: #999">
                                                    <span>Some Description</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table
                        style="
                width: 650px;
                margin: 0 auto;
                background-color: #fff;
                border-radius: 8px;
              ">
                        <tbody>
                            <tr>
                                <td style="padding: 30px">
                                    <h6 style="font-weight: 600">Password Reset</h6>
                                    <p>
                                        you forgot your password for Zeta Admin. If this is true,
                                        click below to reset your password.
                                    </p>
                                    <p style="text-align: center">
                                        <a href="{{ route('reset.password.get', $token) }}"
                                            style="
                          padding: 10px;
                          background-color: #7366ff;
                          color: #fff;
                          display: inline-block;
                          border-radius: 4px;
                        ">Reset
                                            Password</a>
                                    </p>
                                    <p>
                                        If you have remember your password you can safely ignore
                                        his email.
                                    </p>
                                    <p>Good luck! Hope it works.</p>
                                    <p style="margin-bottom: 0">
                                        Regards,<br />Laravel Web
                                    </p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- <table style="width: 650px; margin: 0 auto; margin-top: 30px">
              <tbody>
                <tr style="text-align: center">
                  <td>
                    <p style="color: #999; margin-bottom: 0">333 Woodland Rd. Baldwinsville, NY 13027</p>
                    <p style="color: #999; margin-bottom: 0">Don't Like These Emails?<a href="#" style="color: #7366ff">Unsubscribe</a></p>
                    <p style="color: #999; margin-bottom: 0">Powered By Zeta Admin</p>
                  </td>
                </tr>
              </tbody>
            </table> -->
                </td>
            </tr>
        </tbody>
    </table>
</body>

</html>
