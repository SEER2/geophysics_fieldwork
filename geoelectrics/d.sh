#!/bin/sh

gfortran converter_bm1_to_xyz.f90
./a.out
gfortran converter_bm2_to_xyz.f90
./a.out

for i in {1..6}
do
	cat b_m_2_$i.txt >> b_m_1_$i.txt
	mv b_m_1_$i.txt b_bisect_xyz_$i.txt
done

rm b_m_2_?.txt
rm a.out
