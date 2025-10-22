<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Template</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <style>
      body {
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        background: linear-gradient(135deg, #0da5fd, #4ac142);
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
        <a href="../index.php" class="btn btn-outline-dark mb-3">
          <i class="bi bi-arrow-left"></i> 
        </a>
        <h3 class="text-center mb-4 text-success">Login</h3>
        <form>
          <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" class="form-control" id="username" placeholder="username" required>
          </div>
          <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input 
              type="password" 
              class="form-control" 
              id="password" 
              placeholder="Enter password" 
              minlength="6" 
              required
            >
            <div class="form-text text-mute">
              Password must be at least 6 characters long.
            </div>
          </div>
          <button type="submit" class="btn btn-success w-100 btn-login" formaction="../index.php">Login</button>
        </form>
        <div class="text-center mt-3">
          <a href="#" class="d-block">Forgot password?</a>
          <small>Don't have an account? <a href="../register.php">Register</a></small>
        </div>
      </div>
    </div>

    <script>
      const form = document.querySelector("form");

      form.addEventListener("submit", (event) => {
        event.preventDefault();

        const username = document.getElementById("username").value.trim();

        if (username) {
          localStorage.setItem("username", " back, " + username);

          window.location.href = "../index.php";
        }
      });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.min.js" integrity="sha384-G/EV+4j2dNv+tEPo3++6LCgdCROaejBqfUeNjuKAiuXbjrxilcCdDz6ZAVfHWe1Y" crossorigin="anonymous"></script>    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
  </body>
</html>
