// ------------------------------------------------------------------------------
// Copyright (c) 2012 GeometryFactory (FRANCE)
// SPDX-License-Identifier: GPL-3.0-or-later OR LicenseRef-Commercial
// ------------------------------------------------------------------------------ 

%define PSP_DOCSTRING
"SWIG wrapper for the CGAL 3D Point Set Processing package provided under the GPL-3.0+ license"
%enddef
%module (package="CGAL", docstring=PSP_DOCSTRING) CGAL_Point_set_processing_3

%include "SWIG_CGAL/common.i"
Decl_void_type()

SWIG_CGAL_add_java_loadLibrary(CGAL_Point_set_processing_3)
SWIG_CGAL_package_common()

%import  "SWIG_CGAL/Common/Macros.h"
%import  "SWIG_CGAL/Kernel/CGAL_Kernel.i"
%import  "SWIG_CGAL/Point_set_3/CGAL_Point_set_3.i"
%include "SWIG_CGAL/Common/Iterator.h"

%pragma(java) jniclassimports=%{
import CGAL.Kernel.Point_3;
import CGAL.Kernel.Vector_3;
import CGAL.Point_set_3.Point_set_3;
import CGAL.Point_set_3.Point_set_3_Int_map;
import java.util.Iterator;
import java.util.Collection;
%}

%pragma(java) moduleimports=%{
import CGAL.Kernel.Point_3;
import CGAL.Kernel.Vector_3;
import CGAL.Point_set_3.Point_set_3;
import CGAL.Point_set_3.Point_set_3_Int_map;
import java.util.Iterator;
import java.util.Collection;
%};

%types(Point_3*,Point_3);//needed so that the identifier SWIGTYPE_p_Point_3 is generated
%types(Vector_3*,Vector_3);//needed so that the identifier SWIGTYPE_p_Vector_3 is generated

%include "SWIG_CGAL/Point_set_processing_3/functions.h"

%{
  #include <SWIG_CGAL/Point_set_processing_3/functions.h>
%}

#ifdef SWIG_CGAL_HAS_Point_set_processing_3_USER_PACKAGE
%include "SWIG_CGAL/User_packages/Point_set_processing_3/extensions.i"
#endif
