void dk_nang_tay_trai() {
  analogWrite(pwm_nang_tay_toi, 255);
  analogWrite(pwm_nang_tay_lui, 0);
}
void dk_nang_tay_phai() {
  analogWrite(pwm_nang_tay_toi, 0);
  analogWrite(pwm_nang_tay_lui, 255);
}
void dk_dung_dong_co_nang() {
  analogWrite(pwm_nang_tay_lui, 0);
  analogWrite(pwm_nang_tay_toi, 0);
}
void nang_30_tay_trai() {
  dk_nang_tay_trai();
  delay(2500);
  dk_dung_dong_co_nang();
    // nang_tay_encoder(nang_tay_trai, 100);
}
void nang_30_tay_phai() {
  dk_nang_tay_phai();
  delay(2500);
  dk_dung_dong_co_nang();
}
void nang_50_tay_trai() {
  dk_nang_tay_trai();
  delay(4000);
  dk_dung_dong_co_nang();
    // nang_tay_encoder(nang_tay_trai, 100);
}
void nang_50_tay_phai() {
  dk_nang_tay_phai();
  delay(4000);
  dk_dung_dong_co_nang();
}
void nang_70_tay_trai() {
  dk_nang_tay_trai();
  delay(6000);
  dk_dung_dong_co_nang();
//  nang_tay_encoder(nang_tay_trai, 3000);
}
void nang_70_tay_phai() {
  dk_nang_tay_phai();
  delay(6000);
  dk_dung_dong_co_nang();
}

