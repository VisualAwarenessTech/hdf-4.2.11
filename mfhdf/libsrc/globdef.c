/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * Copyright 1993, University Corporation for Atmospheric Research           *
 * See netcdf/COPYRIGHT file for copying and redistribution conditions.      *
 *                                                                           *
 * Copyright by The HDF Group.                                               *
 * Copyright by the Board of Trustees of the University of Illinois.         *
 * All rights reserved.                                                      *
 *                                                                           *
 * This file is part of HDF.  The full HDF copyright notice, including       *
 * terms governing use, modification, and redistribution, is contained in    *
 * the files COPYING and Copyright.html.  COPYING can be found at the root   *
 * of the source code distribution tree; Copyright.html can be found at      *
 * http://hdfgroup.org/products/hdf4/doc/Copyright.html.  If you do not have *
 * access to either file, you may request a copy from help@hdfgroup.org.     *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

/*
 *
 * $Id: globdef.c 5457 2010-09-07 17:21:51Z byrn $
 *
 * This file initializes all global variables.  It's a separate file in order
 * to allow the creation of SunOS sharable-libraries.
 */
#include "h4config.h"
#include "H4api_adpt.h"

#ifdef H4_HAVE_NETCDF
#include "netcdf.h"
#include "local_nc.h"
#else
#include "hdf4_netcdf.h"
#endif


int ncerr = NC_NOERR ;


/*
 * russ's last minute whistles
 *	The error(3) subroutines emit no messages unless NC_VERBOSE bit is on.
 *	The error(3) subroutines call exit() when NC_FATAL bit is on.
 */
int ncopts = (NC_FATAL | NC_VERBOSE) ;


/*
 *	Set to the the name of the current interface routine by the
 * interface routine.
 */
const char *cdf_routine_name = "netcdf";
