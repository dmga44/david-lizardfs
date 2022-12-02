USE_RAMDISK=YES \
setup_local_empty_lizardfs info

cd "${info[mount0]}"

david_hidden_file_content=$(cat .david)

my_hack="my hack"

expect_equals "$david_hidden_file_content" "$my_hack"
