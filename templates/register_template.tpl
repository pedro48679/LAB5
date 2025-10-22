<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Template</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
    <style>
      body {
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        background: linear-gradient(135deg, rgba(33, 103, 172, 0.863), #731bd074);
      }
      .login-card {
        max-width: 400px;
        width: 100%;
        border-radius: 1rem;
        background-color: #ffffff8a;
      }
      .btn-login {
        border-radius: 0.5rem;
      }
    </style>
  </head>
  <body>
    <div class="card shadow-lg p-4 login-card">
      <div class="card-body">
        <form method="post" action="register_action.php">
          <button type="submit" name="reset" value="1" class="btn btn-outline-dark mb-3">
            <i class="bi bi-arrow-left"></i>
          </button>
          
          <h3 class="text-center mb-4 text-dark">Register</h3>

          <!-- Username -->

          <label for="username">Username</label>
          <input name="username" 
                value="{$username}"
                class="form-control" 
                type="text"
                maxlength="50"
                size="38"
                placeholder="Username" />
          {if isset($errors.username)}
            <small class="text-danger">{$errors.username}</small>
          {/if}
 

          <!-- Email -->
          <div class="mb-3">
              <label for="email">Email</label>
              <input type="text" 
                    value="{$email}"
                    class="form-control" 
                    id="email" name="email" 
                    placeholder="Enter email">
              {if isset($errors.email)}
                <small class="text-danger">{$errors.email}</small>
              {/if}
          </div>

          <!-- Password -->
          <div class="mb-3">
              <label for="password">Password</label>
              <input type="password" 
                    value="{$password}"
                    class="form-control" 
                    id="password" name="password" 
                    placeholder="Enter password">
              {if isset($errors.password)}
                <small class="text-danger">{$errors.password}</small>
              {/if}
          </div>

          <!-- Confirm Password -->
          <div class="mb-5">
              <label for="confirm-password">Confirm Password</label>
              <input type="password" 
                    class="form-control" 
                    id="confirm-password" name="confirm_password" 
                    placeholder="Confirm password" value="{$confirm_password}">
              {if isset($errors.confirm_password)}
                <small class="text-danger">{$errors.confirm_password}</small>
              {/if}
          </div>

          <button type="submit" name= "confirm" class="btn btn-dark w-100 btn-login" value=" OK ">Create Account</button>
        </form>
      </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.min.js" integrity="sha384-G/EV+4j2dNv+tEPo3++6LCgdCROaejBqfUeNjuKAiuXbjrxilcCdDz6ZAVfHWe1Y" crossorigin="anonymous"></script>    
  </body>
</html>
