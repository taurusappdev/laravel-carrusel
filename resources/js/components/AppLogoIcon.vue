<script setup lang="ts">
import type { HTMLAttributes } from 'vue';

defineOptions({
    inheritAttrs: false,
});

type Props = {
    className?: HTMLAttributes['class'];
};

defineProps<Props>();
</script>

<template>
    <img
        :class="['bg-cover', className]"
        src="/logo-tes.png"
        alt="App Logo Icon"
    />
</template>
