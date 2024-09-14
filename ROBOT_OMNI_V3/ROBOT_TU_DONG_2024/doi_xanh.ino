void doi_xanh() {
  //Xuất phát và chạy tới nơi nhận bóng
  chay_do_encoder(chay_toi, 5850, 1, 103, 103);
  delay(100);
  chay_bat_line_doc_cam_bien(chay_cheo_phai, 100, 100, cb_2, cb_3);

  //chay khoi line
  chay_thoat_line_doc_cam_bien(chay_lui, 100, 108, cb_2, cb_3);
  //*******

  //gắp bóng và chạy tới
  xu_ly_hanh_dong_lay_bong_doi_xanh();
  chay_toi_bat_cam_bien_dau_doi_xanh();  // => chạy tới khi nào chạm vật cản
  //*******

  //chạy tới silo 1
  chay_do_encoder(chay_phai, 1200, 1, 100, 103);  //=> chạy qua khỏi line 3
  chay_bat_line_doc_cam_bien(chay_phai, 100, 103, cb_2, cb_3);
  chay_do_encoder(chay_phai, 350, 1, 100, 103);  //=> chạy qua khỏi line 2
  chay_bat_line_doc_cam_bien(chay_phai, 100, 103, cb_2, cb_3);
  //*******

  //thả bóng vào slio 1 và 2
  xu_ly_hanh_dong_chay_tha_bong_doi_xanh(silo_1_2);
  //*******

  //chạy về điểm nhận bóng từ silo 2
  chay_do_encoder(chay_trai, 200, 1, 100, 103);                 //=> chạy qua khỏi line 2
  chay_bat_line_doc_cam_bien(chay_trai, 103, 100, cb_2, cb_3);  //=> cháy tới line silo 3
  chay_toi_bat_cam_bien_dau_doi_xanh();                                  // => chạy tới khi nào chạm vật cản
  chay_do_encoder(chay_lui, 300, 1, 100, 103);
  quay_robo_90_trai(150);
  chay_bat_line_doc_cam_bien(chay_trai, 108, 100, cb_3, cb_3);  //=> chạy tới điểm nhận bóng
                                                                //*******

  //gắp bóng và chạy tới
  chay_do_encoder(chay_phai, 30, 1, 100, 103);
  chay_thoat_line_doc_cam_bien(chay_lui, 100, 108, cb_2, cb_3);
  xu_ly_hanh_dong_lay_bong_doi_xanh();
  chay_toi_bat_cam_bien_dau_doi_xanh();  // => chạy tới khi nào chạm vật cản
  //*******

  //chạy tới silo 2
  chay_do_encoder(chay_phai, 800, 1, 100, 103);  //=> chạy qua khỏi line 3
  chay_bat_line_doc_cam_bien(chay_phai, 100, 103, cb_2, cb_3);
  //*******

  //thả bóng vào slio 2 và 3
  xu_ly_hanh_dong_chay_tha_bong_doi_xanh(silo_2_3);
  //*******

  //chạy về điểm nhận bóng từ silo 3
  chay_do_encoder(chay_lui, 250, 1, 100, 103);
  quay_robo_90_trai(150);
  chay_bat_line_doc_cam_bien(chay_trai, 100, 100, cb_3, cb_3);  //=> chạy tới điểm nhận bóng
  //*******

  //gắp bóng và chạy tới
  chay_do_encoder(chay_phai, 30, 1, 100, 103);
  chay_thoat_line_doc_cam_bien(chay_lui, 100, 108, cb_2, cb_3);
  nang_30_tay_phai();
  xu_ly_hanh_dong_lay_bong_doi_xanh();
  chay_do_encoder(chay_toi, 4000, 1, 100, 100);
  chay_toi_bat_cam_bien_dau_doi_xanh();  // => chạy tới khi nào chạm vật cản
  //*******

  //chạy tới silo 3
  chay_bat_line_doc_cam_bien(chay_phai, 100, 103, cb_2, cb_3);
  //*******

  //thả bóng vào slio 3
  xu_ly_hanh_dong_chay_tha_bong_doi_xanh(silo_3);
  //****
}

void ct_1_doi_xanh() {
  //-------------------------------------
  //Xuất phát và chạy tới nơi nhận bóng
  chay_do_encoder(chay_toi, 5850, 1, 103, 103);
  delay(100);
  chay_bat_line_doc_cam_bien(chay_cheo_phai, 100, 100, cb_2, cb_3);

  //chay khoi line
  chay_thoat_line_doc_cam_bien(chay_lui, 100, 108, cb_2, cb_3);
  //*******

  //gắp bóng và chạy tới
  xu_ly_hanh_dong_lay_bong_doi_xanh();
  chay_toi_bat_cam_bien_dau_doi_xanh();  // => chạy tới khi nào chạm vật cản
  //*******

  ////----------------------------------

  //chạy tới silo 2
  chay_do_encoder(chay_phai, 800, 1, 100, 103);  //=> chạy qua khỏi line 3
  chay_bat_line_doc_cam_bien(chay_phai, 100, 103, cb_2, cb_3);
  //*******

  //thả bóng vào slio 2
  xu_ly_hanh_dong_chay_tha_bong_doi_xanh(silo_2);
  //*******


  //chạy về điểm nhận bóng từ silo 2
  chay_do_encoder(chay_trai, 200, 1, 100, 103);                 //=> chạy qua khỏi line 2
  chay_bat_line_doc_cam_bien(chay_trai, 103, 100, cb_2, cb_3);  //=> cháy tới line silo 3
  chay_toi_bat_cam_bien_dau_doi_xanh();                                  // => chạy tới khi nào chạm vật cản
  chay_do_encoder(chay_lui, 200, 1, 100, 103);
  quay_robo_90_trai(150);
  chay_bat_line_doc_cam_bien(chay_trai, 108, 100, cb_3, cb_3);  //=> chạy tới điểm nhận bóng
  //*******

  //----------------
  //gắp bóng và chạy tới
  chay_do_encoder(chay_phai, 30, 1, 100, 103);
  chay_thoat_line_doc_cam_bien(chay_lui, 100, 108, cb_2, cb_3);
  xu_ly_hanh_dong_lay_bong_doi_xanh();
  chay_do_encoder(chay_toi, 4000, 1, 100, 100);
  chay_toi_bat_cam_bien_dau_doi_xanh();  // => chạy tới khi nào chạm vật cản
  //*******
  ///------------------

  //chạy tới silo 3
  chay_bat_line_doc_cam_bien(chay_phai, 100, 103, cb_2, cb_3);
  //*******

  //thả bóng vào slio 3
  xu_ly_hanh_dong_chay_tha_bong_doi_xanh(silo_3);
  //****

  //chạy về điểm nhận bóng từ silo 3
  chay_do_encoder(chay_lui, 250, 1, 100, 103);
  quay_robo_90_trai(150);
  chay_bat_line_doc_cam_bien(chay_trai, 100, 100, cb_3, cb_3);  //=> chạy tới điểm nhận bóng
  //*******

  //----------------
  //gắp bóng và chạy tới
  chay_do_encoder(chay_phai, 30, 1, 100, 103);
  chay_thoat_line_doc_cam_bien(chay_lui, 100, 108, cb_2, cb_3);
  nang_30_tay_phai();
  xu_ly_hanh_dong_lay_bong_doi_xanh();
  chay_do_encoder(chay_toi, 4000, 1, 100, 100);
  chay_toi_bat_cam_bien_dau_doi_xanh();  // => chạy tới khi nào chạm vật cản
  //*******
  ///------------------

  //chạy tới silo 3
  chay_bat_line_doc_cam_bien(chay_phai, 100, 103, cb_2, cb_3);
  //*******

  //thả bóng vào slio 3 va 1
  xu_ly_hanh_dong_chay_tha_bong_doi_xanh(silo_3_1);
  //****
}

void ct_2_doi_xanh() {
  //-------------------------------------
  //Xuất phát và chạy tới nơi nhận bóng
  chay_do_encoder(chay_toi, 5850, 1, 103, 103);
  delay(100);
  chay_bat_line_doc_cam_bien(chay_cheo_phai, 100, 100, cb_2, cb_3);

  //chay khoi line
  chay_thoat_line_doc_cam_bien(chay_lui, 100, 108, cb_2, cb_3);
  //*******

  //gắp bóng và chạy tới
  xu_ly_hanh_dong_lay_bong_doi_xanh();
  chay_do_encoder(chay_toi, 4000, 1, 100, 100);
  chay_toi_bat_cam_bien_dau_doi_xanh();  // => chạy tới khi nào chạm vật cản
  //*******
  ////----------------------------------

  //chạy tới silo 3
  chay_bat_line_doc_cam_bien(chay_phai, 100, 103, cb_2, cb_3);
  //*******

  //thả bóng vào slio 3
  xu_ly_hanh_dong_chay_tha_bong_doi_xanh(silo_3);
  //*******

  //chạy về điểm nhận bóng từ silo 3
  chay_do_encoder(chay_lui, 250, 1, 100, 103);
  quay_robo_90_trai(150);
  chay_bat_line_doc_cam_bien(chay_trai, 100, 100, cb_3, cb_3);  //=> chạy tới điểm nhận bóng
  //*******

  //----------------
  //gắp bóng và chạy tới
  chay_do_encoder(chay_phai, 30, 1, 100, 103);
  chay_thoat_line_doc_cam_bien(chay_lui, 100, 108, cb_2, cb_3);
  nang_30_tay_phai();
  xu_ly_hanh_dong_lay_bong_doi_xanh();
  chay_do_encoder(chay_toi, 4000, 1, 100, 100);
  chay_toi_bat_cam_bien_dau_doi_xanh();  // => chạy tới khi nào chạm vật cản
  //*******
  ///------------------

  //chạy tới silo 3
  chay_bat_line_doc_cam_bien(chay_phai, 100, 103, cb_2, cb_3);
  //*******

  //thả bóng vào slio 3
  xu_ly_hanh_dong_chay_tha_bong_doi_xanh(silo_3);
  //****

  //chạy về điểm nhận bóng từ silo 3
  chay_do_encoder(chay_lui, 250, 1, 100, 103);
  quay_robo_90_trai(150);
  chay_bat_line_doc_cam_bien(chay_trai, 100, 100, cb_3, cb_3);  //=> chạy tới điểm nhận bóng
  //*******

  //----------------
  //gắp bóng và chạy tới
  chay_do_encoder(chay_phai, 30, 1, 100, 103);
  chay_thoat_line_doc_cam_bien(chay_lui, 100, 108, cb_2, cb_3);
  nang_30_tay_phai();
  xu_ly_hanh_dong_lay_bong_doi_xanh();
  chay_toi_bat_cam_bien_dau_doi_xanh();  // => chạy tới khi nào chạm vật cản
  //*******
  ///------------------

  //chạy tới silo 2
  chay_do_encoder(chay_phai, 800, 1, 100, 103);  //=> chạy qua khỏi line 3
  chay_bat_line_doc_cam_bien(chay_phai, 100, 103, cb_2, cb_3);
  //*******

  //thả bóng vào slio 2 va 1
  xu_ly_hanh_dong_chay_tha_bong_doi_xanh(silo_2_1);
  //****
}