project('animationwindow', ['c', 'cpp'], version: '0.01', default_options: ['cpp_std=c++20', 'default_library=static', 'buildtype=debugoptimized'])

if host_machine.system() == 'windows'
    sdl2_dep = subproject('sdl2_windows').get_variable('sdl2_windows_dep')
    sdl2image_dep = subproject('sdl2_image_windows').get_variable('sdl2_image_windows_dep')
else
    sdl2_dep = dependency('sdl2')
    sdl2image_dep = dependency('sdl2_image')
endif


build_files = [
    'src/internal/FontCache.cpp', 
    'src/internal/KeyboardKeyConverter.cpp',
    'src/internal/nuklear_implementation.cpp',
    'src/widgets/Button.cpp',
    'src/widgets/TextInput.cpp',
    'src/widgets/TextBox.cpp',
    'src/widgets/DropdownList.cpp',
    'src/AnimationWindow.cpp', 
    'src/Color.cpp', 
    'src/Image.cpp', 
    'src/Widget.cpp']
incdir = include_directories('include')
animationwindow = static_library('animationwindow', build_files, include_directories: incdir, dependencies: [sdl2_dep, sdl2image_dep], install: true)
install_subdir('include', install_dir: '.')
install_subdir('src', install_dir: '.')

animationwindow_dep = declare_dependency(link_with: animationwindow, include_directories: incdir)

import('pkgconfig').generate(animationwindow)

# ex = executable('prog', 'src/test.cpp', include_directories: incdir, dependencies: [sdl2_dep, imgui_dep], link_with: animationwindow)
