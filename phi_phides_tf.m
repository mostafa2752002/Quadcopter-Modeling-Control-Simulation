phi_phides = tf(IOTransfer_r2y)
y_phi = tf([9.81],[1 0 0]);
y_phides = x_theta * phi_phides;
y_phides_neg = -y_phi * phi_phides;