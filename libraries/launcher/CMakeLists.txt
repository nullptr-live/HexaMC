cmake_minimum_required(VERSION 3.9.4)
project(launcher Java)
find_package(Java 1.7 REQUIRED COMPONENTS Development)

include(UseJava)
set(CMAKE_JAVA_JAR_ENTRY_POINT org.hexamc.EntryPoint)
set(CMAKE_JAVA_COMPILE_FLAGS -target 7 -source 7 -Xlint:deprecation -Xlint:unchecked)

set(SRC
    org/hexamc/EntryPoint.java
    org/hexamc/Launcher.java
    org/hexamc/LauncherFactory.java
    org/hexamc/impl/OneSixLauncher.java
    org/hexamc/applet/LegacyFrame.java
    org/hexamc/exception/ParameterNotFoundException.java
    org/hexamc/exception/ParseException.java
    org/hexamc/utils/Parameters.java
    org/hexamc/utils/Utils.java
    net/minecraft/Launcher.java
)
add_jar(NewLaunch ${SRC})
install_jar(NewLaunch "${JARS_DEST_DIR}")
