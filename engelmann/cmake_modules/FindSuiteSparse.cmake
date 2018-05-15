FIND_PATH(CHOLMOD_INCLUDE_DIR NAMES cholmod.h amd.h camd.h
  PATHS
  /usr/local/include
  NO_CMAKE_SYSTEM_PATH
)

FIND_LIBRARY(CHOLMOD_LIBRARY NAMES cholmod
  PATHS
  /usr/local/lib
  NO_CMAKE_SYSTEM_PATH
)

FIND_LIBRARY(AMD_LIBRARY NAMES SHARED NAMES amd
  PATHS
  /usr/local/lib
  NO_CMAKE_SYSTEM_PATH
)

FIND_LIBRARY(CAMD_LIBRARY NAMES camd
  PATHS
  /usr/local/lib
  NO_CMAKE_SYSTEM_PATH
)

FIND_LIBRARY(SUITESPARSECONFIG_LIBRARY NAMES suitesparseconfig
  PATHS
  /usr/local/lib
  NO_CMAKE_SYSTEM_PATH
)

IF(CHOLMOD_INCLUDE_DIR AND CHOLMOD_LIBRARIES)
  SET(CHOLMOD_FOUND TRUE)
ELSE(CHOLMOD_INCLUDE_DIR AND CHOLMOD_LIBRARIES)
  SET(CHOLMOD_FOUND FALSE)
ENDIF(CHOLMOD_INCLUDE_DIR AND CHOLMOD_LIBRARIES)

# Look for csparse; note the difference in the directory specifications!
FIND_PATH(CSPARSE_INCLUDE_DIR NAMES cs.h
  PATHS
  /usr/local/include
  NO_CMAKE_SYSTEM_PATH
)

FIND_LIBRARY(CSPARSE_LIBRARY NAMES cxsparse
  PATHS
  /usr/local/lib
  NO_CMAKE_SYSTEM_PATH
)

IF(CSPARSE_INCLUDE_DIR AND CSPARSE_LIBRARY)
  SET(CSPARSE_FOUND TRUE)
ELSE(CSPARSE_INCLUDE_DIR AND CSPARSE_LIBRARY)
  SET(CSPARSE_FOUND FALSE)
ENDIF(CSPARSE_INCLUDE_DIR AND CSPARSE_LIBRARY)