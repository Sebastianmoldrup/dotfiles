local ok, smear = pcall(require, "smear_cursor")
if not ok then return end

smear.setup({
  cursor_color = "#d3cdc3",
  stiffness = 0.8,
  trailing_stiffness = 0.5,
  distance_stop_animating = 0.5,
})
