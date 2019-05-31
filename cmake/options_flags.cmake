
IF(PRECISION_8BYTE)
    SET(PRECISION_FLAG "REAL8")
ELSE(PRECISION_8BYTE)
    SET(PRECISION_FLAG "REAL4")
ENDIF(PRECISION_8BYTE)

IF(SUN)
    SET(MACHINE_FLAG "CMACHSUN")
ELSEIF(SGI)
    SET(MACHINE_FLAG "SGI")
ELSEIF(CRAY)
    SET(MACHINE_FLAG "CRAY")
ELSEIF(CRAYX1)
    SET(MACHINE_FLAG "CRAYX1")
ELSEIF(UNIX)
    SET(MACHINE_FLAG "LINUX")
ELSEIF(CYGWIN)
    SET(MACHINE_FLAG "LINUX")
ELSEIF(WIN32)
    SET(MACHINE_FLAG "WINDOWS")
ELSEIF(APPLE)
    SET(MACHINE_FLAG "LINUX")
ENDIF(SUN)

IF(SUN_MACHINE)
    SET(MACHINE_FLAG "${MACHINE_FLAG} -CMACHSUN")
ENDIF(SUN_MACHINE)

IF(ENABLE_WARN_ELEV_DEBUG)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} DEBUG_WARN_ELEV")
ENDIF(ENABLE_WARN_ELEV_DEBUG)

IF(ENABLE_POWELL)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} POWELL")
ENDIF(ENABLE_POWELL)

IF(DEBUG_FULL_STACK)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} FULL_STACK")
ENDIF(DEBUG_FULL_STACK)

IF(DEBUG_ALL_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} ALL_TRACE")
ENDIF(DEBUG_ALL_TRACE)

IF(DEBUG_FLUSH_MESSAGES)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} FLUSH_MESSAGES")
ENDIF(DEBUG_FLUSH_MESSAGES)

IF(DEBUG_LOG_LEVEL)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} EBUG")
ENDIF(DEBUG_LOG_LEVEL)

IF(DEBUG_GLOBALIO_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} GLOBALIO_TRACE")
ENDIF(DEBUG_GLOBALIO_TRACE)

IF(DEBUG_WRITER_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} WRITER_TRACE")
ENDIF(DEBUG_WRITER_TRACE)

IF(DEBUG_WRITE_OUTPUT_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} WRITE_OUTPUT_TRACE")
ENDIF(DEBUG_WRITE_OUTPUT_TRACE)

IF(DEBUG_WIND_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} WIND_TRACE")
ENDIF(DEBUG_WIND_TRACE)

IF(DEBUG_WEIR_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} WEIR_TRACE")
ENDIF(DEBUG_WEIR_TRACE)

IF(DEBUG_TVW_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} TVW_TRACE")
ENDIF(DEBUG_TVW_TRACE)

IF(DEBUG_VSMY_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} VSMY_TRACE")
ENDIF(DEBUG_VSMY_TRACE)

IF(DEBUG_TIMESTEP_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} TIMESTEP_TRACE")
ENDIF(DEBUG_TIMESTEP_TRACE)

IF(DEBUG_SUBPREP_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} SUBPREP_TRACE")
ENDIF(DEBUG_SUBPREP_TRACE)

IF(DEBUG_SUBDOMAIN_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} SUBDOMAIN_TRACE")
ENDIF(DEBUG_SUBDOMAIN_TRACE)

IF(DEBUG_READ_INPUT_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} SUBDOMAIN_TRACE")
ENDIF(DEBUG_READ_INPUT_TRACE)

IF(DEBUG_OWIWIND_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} OWIWIND_TRACE")
ENDIF(DEBUG_OWIWIND_TRACE)

IF(DEBUG_NODALATTR_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} NODALATTR_TRACE")
ENDIF(DEBUG_NODALATTR_TRACE)
    
IF(DEBUG_NETCDF_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} NETCDF_TRACE")
ENDIF(DEBUG_NETCDF_TRACE)
    
IF(DEBUG_MESSENGER_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} MESSENGER_TRACE")
ENDIF(DEBUG_MESSENGER_TRACE)
    
IF(DEBUG_MESH_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} MESH_TRACE")
ENDIF(DEBUG_MESH_TRACE)

IF(DEBUG_HOTSTART_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} HOTSTART_TRACE")
ENDIF(DEBUG_HOTSTART_TRACE)

IF(DEBUG_GLOBAL_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} GLOBAL_TRACE")
ENDIF(DEBUG_GLOBAL_TRACE)

IF(DEBUG_HARM_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} HARM_TRACE")
ENDIF(DEBUG_HARM_TRACE)

IF(DEBUG_COLDSTART_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} COLDSTART_TRACE")
ENDIF(DEBUG_COLDSTART_TRACE)

IF(DEBUG_COUPLE2SWAN_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} COUPLE2SWAN_TRACE")
ENDIF(DEBUG_COUPLE2SWAN_TRACE)

IF(DEBUG_ADCIRC_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} ADCIRC_TRACE")
ENDIF(DEBUG_ADCIRC_TRACE)

IF(IBM)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} IBM")
ENDIF(IBM) 

IF(VECTOR_COMPUTER)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} CVEC")
ELSE(VECTOR_COMPUTER)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} CSCA")
ENDIF(VECTOR_COMPUTER)

SET(SWAN_FLAG "CSWAN")
SET(PREP_SWAN_FLAG "ADCSWAN")
SET(ADCIRC_MPI_FLAG "CMPI ${MPIMOD_FLAG}")
