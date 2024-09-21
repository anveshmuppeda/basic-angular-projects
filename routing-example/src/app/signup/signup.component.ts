import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.scss']
})
export class SignupComponent {
  constructor(private router: Router) {}

  email: string = '';
  password: string = '';
  confirmPassword: string = '';
  
  onSignup() {
    if (this.password === this.confirmPassword) {
      alert(`Signed up with Email: ${this.email}`);
    } else {
      alert('Passwords do not match!');
    }
  }
  
  loginFunc() {
    this.router.navigate(['/login']);
  }
}
