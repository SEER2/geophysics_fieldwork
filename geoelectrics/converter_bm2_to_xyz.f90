program main
  implicit none

  integer :: i = 1,j = 1 
  real*16 :: a, b, c, d, e, f, rho_s(1:9,1:6) = 0.0, x(1:9) = 0.0, y(1:9) = 0.0
  character*1 cache
  character*11 filename

11 open(10,file = "bedrock_m2_rho_s.txt")
  read(10,*,end = 12) a, b, c, d, e, f
  rho_s(i,1) = a
  rho_s(i,2) = b
  rho_s(i,3) = c
  rho_s(i,4) = d
  rho_s(i,5) = e
  rho_s(i,6) = f
  i = i+1
  goto 11
12 continue
  close(10)

  x(1)=-1.710101
  y(1)=-4.698463
  do i = 2, 5
    x(i) = -2*1.710101*float(i-1)+x(1)
    y(i) = -2*4.698463*float(i-1)+y(1)
  end do

  x(6) = 1.710101
  y(6) = 4.698463
  do i =7, 9
    x(i) = 2*1.710101*float(i-6)+x(6)
    y(i) = 2*4.698463*float(i-6)+y(6)
  end do

  do i = 1, 6
    write(cache,"(i1)") i
    filename = "b_m_2_"//cache//".txt"
  21 open(20,file = filename)
    do j = 1, 9
      if ( (rho_s(j,i)-0.0)>1e-5 ) then
        write(20,*) x(j),y(j),rho_s(j,i)
      endif
    end do
    close(21)
  end do

  stop
end
