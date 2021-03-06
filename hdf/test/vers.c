/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
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

#ifdef RCSID
static char RcsId[] = "@(#)$Revision: 4932 $";
#endif

/* $Id: vers.c 4932 2007-09-07 17:17:23Z bmribler $ */

/*
   ***********************************************************************
   ** get version string from an HDF file
   ***********************************************************************
 */

#include <stdio.h>
#include "tproto.h"

void
test_vers(void)
{
    int         ret;
    uint32      lmajor, lminor, lrelease;
    char        lstring[81];

    ret = Hgetlibversion(&lmajor, &lminor, &lrelease, lstring);
    RESULT("Hgetlibversion");
    MESSAGE(5, printf("Library Version\n");
        );
    MESSAGE(5, printf("---------------\n");
        );
    MESSAGE(5, printf("Major:\t\t%u\nMinor:\t\t%u\nRelease:\t%u\nString:\t\t\"%s\"\n", (unsigned) lmajor, (unsigned) lminor, (unsigned) lrelease, lstring);
        );

}
