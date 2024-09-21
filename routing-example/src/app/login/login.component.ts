import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent {
  
  constructor(private router: Router) {}

  email: string = '';
  password: string = '';

  onLogin() {
    alert(`Logged in with Email: ${this.email}`);
  }

  signupFunc() {
    this.router.navigate(['/signup']);
  }
}
