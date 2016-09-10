program main
  implicit none

  integer :: i = 1, j = 1
  real :: a, b, c ,d, e, f, g, h, l, o, rho_s(1:6,1:10) = 0.0, x(1:10) = 0.0, y(1:16) = 0.0
 
11 open(10,file = "20160908_underground_ab_data.txt")
  read(10,*,end = 12) a, b, c ,d, e, f, g, h, l, o
  rho_s(i,1) = a
  rho_s(i,2) = b
  rho_s(i,3) = c
  rho_s(i,4) = d
  rho_s(i,5) = e
  rho_s(i,6) = f
  rho_s(i,7) = g
  rho_s(i,8) = f
  rho_s(i,9) = l
  rho_s(i,10) = o
  i = i+1
  goto 11
12 continue
  close(10)
  
  do i = 1, 6
    do j = 1, 10
      if( (rho_s(i,j)-0.0)>1e-5 ) then
        rho_s(i,j) = 3.1415*(2.5**2)*11.0/rho_s(i,j)
      else
        rho_s(i,j) = 0.0
      end if
    end do
  end do

  do i = 1, 10
    x(i) = 5.0*float(i-1)
  end do

  do i = 1, 6
    y(i) = 6.0*float(i-1)
  end do

21 open(20,file = "ua_bisect_xyz.txt")
  do i = 1, 6
    do j = 1, 10
      if( rho_s(i,j)>0.0000001 ) then
        write(20,*) x(j),y(i),rho_s(i,j)
      end if
    end do
  end do
  close(21)

  stop
end
