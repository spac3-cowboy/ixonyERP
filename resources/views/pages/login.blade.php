<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title>IERP</title>
</head>
<body>
    <div class="container row mt-5">
        
        <div class="col-md-5">

        </div>
        <div class="col-md-4 border border-primary rounded p-5">
            <h1 class="text-primary">ERP Login</h1>
            <form class="col" method="POST" action="{{ route('login') }}">
                @csrf
                <div class="col-auto">
                    <label class="visually-hidden">Email</label>
                    <input type="email" class="form-control" placeholder="Email" name="email">
                </div>
                <div class="col-auto mt-3">
                    <label for="inputPassword2" class="visually-hidden">Password</label>
                    <input type="password" class="form-control" placeholder="Password" name="password">
                </div>
                <div class="col-auto mt-3">
                    <button type="submit" class="btn btn-primary mb-3">Login</button>
                </div>
            </form>
        </div>
        <div class="col-md-4">
            
        </div>
    </div>
</body>
</html>