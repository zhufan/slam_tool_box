/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * pose_jacobian.h
 *
 * Code generation for function 'pose_jacobian'
 *
 */

#ifndef POSE_JACOBIAN_H
#define POSE_JACOBIAN_H

/* Include files */
#include <stddef.h>
#include <stdlib.h>
#include "rtwtypes.h"
#include "point_jacobian_types.h"

/* Function Declarations */
extern void pose_jacobian(const double in1[3], const double in2[3], const double
  in3[4], const double in4[9], const double in5[3], const double in6[3], double
  b_pose_jacobian[12]);

#endif

/* End of code generation (pose_jacobian.h) */
