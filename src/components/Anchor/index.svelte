<script>
  export let href;
  const classes = $$props.class || '';
</script>

<a {href} class={classes} target="_blank" rel="noreferrer noopener"><slot /></a>
