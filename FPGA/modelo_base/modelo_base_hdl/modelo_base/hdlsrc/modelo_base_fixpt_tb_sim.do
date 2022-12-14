onerror {quit -f}
onbreak {quit -f}
vsim -voptargs=+acc work.modelo_base_fixpt_tb

add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_0
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_1
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_2
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_3
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_4
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_5
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_6
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_7
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_8
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_9
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_10
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_11
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_12
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_13
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_14
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_15
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_16
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_17
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_18
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_19
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_20
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_21
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_22
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_23
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_24
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_25
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_26
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_27
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_28
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/in_29
add wave sim:/modelo_base_fixpt_tb/u_modelo_base_fixpt/out
add wave sim:/modelo_base_fixpt_tb/out_ref
run -all
quit -f
