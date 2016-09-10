program main
  implicit none

  integer :: i = 1,j = 1 
  real*16 :: a, b, c, d, e, f, rho_s(1:20,1:6) = 0.0, x(1:20) = 0.0, y(1:20) = 0.0
  character*1 cache
  character*11 filename

11 open(10,file = "bedrock_m1_rho_s.txt")
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

  do i = 1, 20
    x(i)=1.710101*float(12-i)
    y(i)=-4.698463*float(12-i)
  end do

  do i = 1, 6
    write(cache,"(i1)") i
    filename = "b_m_1_"//cache//".txt"
  21 open(20,file = filename)
    do j = 1, 20
      if ( (rho_s(j,i)-0.0)>1e-5 ) then
        write(20,*) x(j),y(j),rho_s(j,i)
      endif
    end do
    close(21)
  end do

  stop
end
