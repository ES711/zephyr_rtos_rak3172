# Enable second one when using JLink
board_runner_args(stm32cubeprogrammer "--port=swd" "--reset-mode=hw")
#board_runner_args(stm32cubeprogrammer "--port=jlink reset=HWrst freq=4000")
board_runner_args(jlink "--device=STM32WLE5CC" "--speed=4000" "--reset-after-load")

# keep first
include(${ZEPHYR_BASE}/boards/common/stm32cubeprogrammer.board.cmake)
include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)