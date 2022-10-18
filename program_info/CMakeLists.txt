if(UNIX)
    find_package(PkgConfig)
    if(PkgConfig_FOUND)
        pkg_search_module(SCDOC scdoc)
        if(SCDOC_FOUND)
            pkg_get_variable(SCDOC_SCDOC scdoc scdoc)
        endif()
    endif()
endif()

set(Launcher_CommonName "HexaMC")

set(Launcher_Copyright "HexaMC Contributors\\n© 2012-2021 MultiMC Contributors")
set(Launcher_Copyright "${Launcher_Copyright}" PARENT_SCOPE)
set(Launcher_Domain "nullptr.live" PARENT_SCOPE)
set(Launcher_Name "${Launcher_CommonName}" PARENT_SCOPE)
set(Launcher_DisplayName "${Launcher_CommonName}" PARENT_SCOPE)
set(Launcher_UserAgent "${Launcher_CommonName}/${Launcher_VERSION_NAME}" PARENT_SCOPE)
set(Launcher_ConfigFile "polymc.cfg" PARENT_SCOPE) # Keep compatibility
set(Launcher_Git "https://github.com/nullptr-live/HexaMC" PARENT_SCOPE)
set(Launcher_DesktopFileName "org.hexamc.HexaMC.desktop" PARENT_SCOPE)

set(Launcher_Desktop "program_info/org.hexamc.HexaMC.desktop" PARENT_SCOPE)
set(Launcher_MetaInfo "program_info/org.hexamc.HexaMC.metainfo.xml" PARENT_SCOPE)
set(Launcher_SVG "program_info/org.hexamc.HexaMC.svg" PARENT_SCOPE)
set(Launcher_Branding_ICNS "program_info/hexamc.icns" PARENT_SCOPE)
set(Launcher_Branding_ICO "program_info/hexamc.ico")
set(Launcher_Branding_ICO "${Launcher_Branding_ICO}" PARENT_SCOPE)
set(Launcher_Branding_WindowsRC "program_info/hexamc.rc" PARENT_SCOPE)
set(Launcher_Branding_LogoQRC "program_info/hexamc.qrc" PARENT_SCOPE)

set(Launcher_Portable_File "program_info/portable.txt" PARENT_SCOPE)

configure_file(org.hexamc.HexaMC.desktop.in org.hexamc.HexaMC.desktop)
configure_file(org.hexamc.HexaMC.metainfo.xml.in org.hexamc.HexaMC.metainfo.xml)
configure_file(hexamc.rc.in hexamc.rc @ONLY)
configure_file(hexamc.manifest.in hexamc.manifest @ONLY)
configure_file(hexamc.ico hexamc.ico COPYONLY)
configure_file(win_install.nsi.in win_install.nsi @ONLY)

if(SCDOC_FOUND)
    set(in_scd "${CMAKE_CURRENT_SOURCE_DIR}/hexamc.6.scd")
    set(out_man "${CMAKE_CURRENT_BINARY_DIR}/hexamc.6")
    add_custom_command(
        DEPENDS "${in_scd}"
        OUTPUT "${out_man}"
        COMMAND ${SCDOC_SCDOC} < "${in_scd}" > "${out_man}"
    )
    add_custom_target(man ALL DEPENDS ${out_man})
    set(Launcher_ManPage "program_info/hexamc.6" PARENT_SCOPE)
endif()
