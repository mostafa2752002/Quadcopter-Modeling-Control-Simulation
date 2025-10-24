tf(linsys1)
linsys_tf = minreal(tf(linsys1));
z_dalt = linsys_tf(3,4); 
h_dalt = -z_dalt;

phi_droll = linsys_tf(4,1);
theta_dpitch = linsys_tf(5,2);
epsi_dyaw = linsys_tf(6,3);