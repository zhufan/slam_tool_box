/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * point_jacobian.h
 *
 * Code generation for function 'point_jacobian'
 *
 */

#ifndef POINT_JACOBIAN_H
#define POINT_JACOBIAN_H

/* Include files */
#include <stddef.h>
#include <stdlib.h>
#include "rtwtypes.h"
#include "point_jacobian_types.h"

/* Function Declarations */
extern void point_jacobian(const double in1[3], const double in2[3], const
  double in3[4], const double in4[9], const double in5[3], const double in6[3],
  double b_point_jacobian[6]);

#endif

/* End of code generation (point_jacobian.h) */
