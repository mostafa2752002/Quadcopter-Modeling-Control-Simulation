theta_thetades = tf(IOTransfer_r2y)
x_theta = tf([9.81],[1 0 0]);
x_thetades = x_theta * theta_thetades;
x_thetades_neg = -x_theta * theta_thetades;