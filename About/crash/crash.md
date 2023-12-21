---- Minecraft Crash Report ----
// This is a token for 1 free hug. Redeem at your nearest Mojangsta: [~~HUG~~]

Time: 26.07.21 19:39
Description: mouseClicked event handler

java.lang.NullPointerException: mouseClicked event handler
	at com.github.alexthe666.alexsmobs.config.BiomeConfig.test(BiomeConfig.java:90) ~[alexsmobs:1.10.1] {re:classloading}
	at com.github.alexthe666.alexsmobs.world.AMWorldRegistry.onBiomesLoad(AMWorldRegistry.java:35) ~[alexsmobs:1.10.1] {re:classloading}
	at com.github.alexthe666.alexsmobs.AlexsMobs.onBiomeLoadFromJSON(AlexsMobs.java:79) ~[alexsmobs:1.10.1] {re:classloading}
	at net.minecraftforge.eventbus.ASMEventHandler_8_AlexsMobs_onBiomeLoadFromJSON_BiomeLoadingEvent.invoke(.dynamic) ~[?:?] {}
	at net.minecraftforge.eventbus.ASMEventHandler.invoke(ASMEventHandler.java:85) ~[eventbus-4.0.0.jar:?] {}
	at net.minecraftforge.eventbus.EventBus.post(EventBus.java:302) ~[eventbus-4.0.0.jar:?] {}
	at net.minecraftforge.eventbus.EventBus.post(EventBus.java:283) ~[eventbus-4.0.0.jar:?] {}
	at net.minecraftforge.common.ForgeHooks.enhanceBiome(ForgeHooks.java:944) ~[forge:?] {re:classloading}
	at net.minecraft.world.biome.Biome.lambda$null$8(Biome.java:75) ~[?:?] {re:mixin,pl:accesstransformer:B,re:computing_frames,pl:accesstransformer:B,xf:fml:sereneseasons:temperature_transformer,re:classloading,pl:accesstransformer:B,xf:fml:sereneseasons:temperature_transformer,pl:mixin:APP:notenoughcrashes.mixins.json:MixinBiome,pl:mixin:APP:notenoughcrashes.forge.mixins.json:MixinBiomeStructureDetails,pl:mixin:A}
	at com.mojang.datafixers.util.Function8.lambda$null$6(Function8.java:22) ~[datafixerupper-4.0.26.jar:?] {re:classloading}
	at com.mojang.datafixers.util.Function4.lambda$null$2(Function4.java:14) ~[datafixerupper-4.0.26.jar:?] {re:classloading}
	at com.mojang.serialization.DataResult$Instance.ap2(DataResult.java:315) ~[datafixerupper-4.0.26.jar:?] {re:classloading}
	at com.mojang.datafixers.kinds.Applicative.ap4(Applicative.java:84) ~[datafixerupper-4.0.26.jar:?] {re:classloading}
	at com.mojang.serialization.codecs.RecordCodecBuilder$Instance$7.decode(RecordCodecBuilder.java:404) ~[datafixerupper-4.0.26.jar:?] {re:classloading}
	at com.mojang.serialization.codecs.RecordCodecBuilder$2.decode(RecordCodecBuilder.java:107) ~[datafixerupper-4.0.26.jar:?] {re:classloading}
	at com.mojang.serialization.MapDecoder.lambda$compressedDecode$0(MapDecoder.java:52) ~[datafixerupper-4.0.26.jar:?] {re:classloading}
	at com.mojang.serialization.DataResult.lambda$flatMap$10(DataResult.java:138) ~[datafixerupper-4.0.26.jar:?] {re:classloading}
	at com.mojang.datafixers.util.Either$Left.map(Either.java:38) ~[datafixerupper-4.0.26.jar:?] {re:classloading}
	at com.mojang.serialization.DataResult.flatMap(DataResult.java:136) ~[datafixerupper-4.0.26.jar:?] {re:classloading}
	at com.mojang.serialization.MapDecoder.compressedDecode(MapDecoder.java:52) ~[datafixerupper-4.0.26.jar:?] {re:classloading}
	at com.mojang.serialization.MapCodec$MapCodecCodec.decode(MapCodec.java:91) ~[datafixerupper-4.0.26.jar:?] {re:classloading}
	at com.mojang.serialization.Decoder.parse(Decoder.java:18) ~[datafixerupper-4.0.26.jar:?] {re:classloading}
	at net.minecraft.util.registry.WorldSettingsImport$IResourceAccess$RegistryAccess.func_241879_a(WorldSettingsImport.java:236) ~[?:?] {re:classloading}
	at net.minecraft.util.registry.WorldSettingsImport.func_241805_a_(WorldSettingsImport.java:131) ~[?:?] {re:classloading}
	at net.minecraft.util.registry.WorldSettingsImport.func_240885_a_(WorldSettingsImport.java:105) ~[?:?] {re:classloading}
	at com.mojang.serialization.DataResult.lambda$flatMap$10(DataResult.java:138) ~[datafixerupper-4.0.26.jar:?] {re:classloading}
	at com.mojang.datafixers.util.Either$Left.map(Either.java:38) ~[datafixerupper-4.0.26.jar:?] {re:classloading}
	at com.mojang.serialization.DataResult.flatMap(DataResult.java:136) ~[datafixerupper-4.0.26.jar:?] {re:classloading}
	at net.minecraft.util.registry.WorldSettingsImport.func_241797_a_(WorldSettingsImport.java:104) ~[?:?] {re:classloading}
	at net.minecraft.util.registry.DynamicRegistries.func_243610_a(DynamicRegistries.java:144) ~[?:?] {re:classloading,re:mixin}
	at net.minecraft.util.registry.DynamicRegistries.func_243608_a(DynamicRegistries.java:132) ~[?:?] {re:classloading,re:mixin}
	at net.minecraft.util.registry.WorldSettingsImport.func_244336_a(WorldSettingsImport.java:53) ~[?:?] {re:classloading}
	at net.minecraft.util.registry.DynamicRegistries.func_239770_b_(DynamicRegistries.java:85) ~[?:?] {re:classloading,re:mixin}
	at net.minecraft.client.Minecraft.func_238191_a_(Minecraft.java:1681) ~[?:?] {re:mixin,pl:accesstransformer:B,pl:runtimedistcleaner:A,re:classloading,pl:accesstransformer:B,pl:mixin:APP:notenoughcrashes.mixins.json:client.MixinMinecraftClient,pl:mixin:APP:randompatches.mixins.json:client.MinecraftMixin,pl:mixin:APP:charm.mixins.json:accessor.MinecraftAccessor,pl:mixin:APP:mining_helmet.mixins.json:MinecraftMixin,pl:mixin:APP:nowplaying.mixins.json:MinecraftClientMixin,pl:mixin:A,pl:runtimedistcleaner:A}
	at net.minecraft.client.gui.screen.WorldSelectionList$Entry.func_214443_e(SourceFile:407) ~[?:?] {re:classloading}
	at net.minecraft.client.gui.screen.WorldSelectionList$Entry.func_214438_a(SourceFile:317) ~[?:?] {re:classloading}
	at net.minecraft.client.gui.screen.WorldSelectionList$Entry.func_231044_a_(SourceFile:254) ~[?:?] {re:classloading}
	at net.minecraft.client.gui.widget.list.AbstractList.func_231044_a_(AbstractList.java:309) ~[?:?] {re:classloading,pl:accesstransformer:B,pl:runtimedistcleaner:A}
	at net.minecraft.client.gui.INestedGuiEventHandler.func_231044_a_(SourceFile:27) ~[?:?] {re:mixin,re:classloading}
	at net.minecraft.client.MouseHelper.func_198033_b(MouseHelper.java:87) ~[?:?] {re:mixin,pl:runtimedistcleaner:A,re:classloading,pl:mixin:APP:randompatches.mixins.json:client.keybindings.MouseHelperMixin,pl:mixin:A,pl:runtimedistcleaner:A}
	at net.minecraft.client.gui.screen.Screen.func_231153_a_(Screen.java:427) ~[?:?] {re:mixin,pl:accesstransformer:B,pl:runtimedistcleaner:A,re:classloading,pl:accesstransformer:B,pl:mixin:APP:quark.mixins.json:client.ScreenMixin,pl:mixin:A,pl:runtimedistcleaner:A}
	at net.minecraft.client.MouseHelper.func_198023_a(MouseHelper.java:85) ~[?:?] {re:mixin,pl:runtimedistcleaner:A,re:classloading,pl:mixin:APP:randompatches.mixins.json:client.keybindings.MouseHelperMixin,pl:mixin:A,pl:runtimedistcleaner:A}
	at net.minecraft.client.MouseHelper.func_228030_c_(MouseHelper.java:175) ~[?:?] {re:mixin,pl:runtimedistcleaner:A,re:classloading,pl:mixin:APP:randompatches.mixins.json:client.keybindings.MouseHelperMixin,pl:mixin:A,pl:runtimedistcleaner:A}
	at net.minecraft.util.concurrent.ThreadTaskExecutor.execute(ThreadTaskExecutor.java:106) ~[?:?] {re:mixin,pl:accesstransformer:B,re:computing_frames,pl:accesstransformer:B,xf:OptiFine:default,re:classloading,pl:accesstransformer:B,xf:OptiFine:default}
	at net.minecraft.client.MouseHelper.func_228028_b_(MouseHelper.java:174) ~[?:?] {re:mixin,pl:runtimedistcleaner:A,re:classloading,pl:mixin:APP:randompatches.mixins.json:client.keybindings.MouseHelperMixin,pl:mixin:A,pl:runtimedistcleaner:A}
	at org.lwjgl.glfw.GLFWMouseButtonCallbackI.callback(GLFWMouseButtonCallbackI.java:36) ~[lwjgl-glfw-3.2.2.jar:build 10] {}
	at org.lwjgl.system.JNI.invokeV(Native Method) ~[lwjgl-3.2.2.jar:build 10] {}
	at org.lwjgl.glfw.GLFW.glfwPollEvents(GLFW.java:3101) ~[lwjgl-glfw-3.2.2.jar:build 10] {}
	at com.mojang.blaze3d.systems.RenderSystem.flipFrame(SourceFile:102) ~[?:?] {re:classloading}
	at net.minecraft.client.MainWindow.func_227802_e_(MainWindow.java:398) ~[?:?] {re:mixin,re:classloading,xf:OptiFine:default}
	at net.minecraft.client.Minecraft.func_195542_b(Minecraft.java:996) ~[?:?] {re:mixin,pl:accesstransformer:B,pl:runtimedistcleaner:A,re:classloading,pl:accesstransformer:B,pl:mixin:APP:notenoughcrashes.mixins.json:client.MixinMinecraftClient,pl:mixin:APP:randompatches.mixins.json:client.MinecraftMixin,pl:mixin:APP:charm.mixins.json:accessor.MinecraftAccessor,pl:mixin:APP:mining_helmet.mixins.json:MinecraftMixin,pl:mixin:APP:nowplaying.mixins.json:MinecraftClientMixin,pl:mixin:A,pl:runtimedistcleaner:A}
	at net.minecraft.client.Minecraft.func_99999_d(Minecraft.java:607) ~[?:?] {re:mixin,pl:accesstransformer:B,pl:runtimedistcleaner:A,re:classloading,pl:accesstransformer:B,pl:mixin:APP:notenoughcrashes.mixins.json:client.MixinMinecraftClient,pl:mixin:APP:randompatches.mixins.json:client.MinecraftMixin,pl:mixin:APP:charm.mixins.json:accessor.MinecraftAccessor,pl:mixin:APP:mining_helmet.mixins.json:MinecraftMixin,pl:mixin:APP:nowplaying.mixins.json:MinecraftClientMixin,pl:mixin:A,pl:runtimedistcleaner:A}
	at net.minecraft.client.Minecraft.handler$zzh000$afterCrashHandled(Minecraft.java:2540) ~[?:?] {re:mixin,pl:accesstransformer:B,pl:runtimedistcleaner:A,re:classloading,pl:accesstransformer:B,pl:mixin:APP:notenoughcrashes.mixins.json:client.MixinMinecraftClient,pl:mixin:APP:randompatches.mixins.json:client.MinecraftMixin,pl:mixin:APP:charm.mixins.json:accessor.MinecraftAccessor,pl:mixin:APP:mining_helmet.mixins.json:MinecraftMixin,pl:mixin:APP:nowplaying.mixins.json:MinecraftClientMixin,pl:mixin:A,pl:runtimedistcleaner:A}
	at net.minecraft.client.Minecraft.func_99999_d(Minecraft.java:623) ~[?:?] {re:mixin,pl:accesstransformer:B,pl:runtimedistcleaner:A,re:classloading,pl:accesstransformer:B,pl:mixin:APP:notenoughcrashes.mixins.json:client.MixinMinecraftClient,pl:mixin:APP:randompatches.mixins.json:client.MinecraftMixin,pl:mixin:APP:charm.mixins.json:accessor.MinecraftAccessor,pl:mixin:APP:mining_helmet.mixins.json:MinecraftMixin,pl:mixin:APP:nowplaying.mixins.json:MinecraftClientMixin,pl:mixin:A,pl:runtimedistcleaner:A}
	at net.minecraft.client.Minecraft.handler$zzh000$afterCrashHandled(Minecraft.java:2540) ~[?:?] {re:mixin,pl:accesstransformer:B,pl:runtimedistcleaner:A,re:classloading,pl:accesstransformer:B,pl:mixin:APP:notenoughcrashes.mixins.json:client.MixinMinecraftClient,pl:mixin:APP:randompatches.mixins.json:client.MinecraftMixin,pl:mixin:APP:charm.mixins.json:accessor.MinecraftAccessor,pl:mixin:APP:mining_helmet.mixins.json:MinecraftMixin,pl:mixin:APP:nowplaying.mixins.json:MinecraftClientMixin,pl:mixin:A,pl:runtimedistcleaner:A}
	at net.minecraft.client.Minecraft.func_99999_d(Minecraft.java:623) ~[?:?] {re:mixin,pl:accesstransformer:B,pl:runtimedistcleaner:A,re:classloading,pl:accesstransformer:B,pl:mixin:APP:notenoughcrashes.mixins.json:client.MixinMinecraftClient,pl:mixin:APP:randompatches.mixins.json:client.MinecraftMixin,pl:mixin:APP:charm.mixins.json:accessor.MinecraftAccessor,pl:mixin:APP:mining_helmet.mixins.json:MinecraftMixin,pl:mixin:APP:nowplaying.mixins.json:MinecraftClientMixin,pl:mixin:A,pl:runtimedistcleaner:A}
	at net.minecraft.client.main.Main.main(Main.java:184) ~[Forge%20OptiFine%201.16.5.jar:?] {re:classloading,re:mixin,pl:runtimedistcleaner:A,pl:mixin:A,pl:runtimedistcleaner:A}
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method) ~[?:1.8.0_251] {}
	at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source) ~[?:1.8.0_251] {}
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source) ~[?:1.8.0_251] {}
	at java.lang.reflect.Method.invoke(Unknown Source) ~[?:1.8.0_251] {}
	at net.minecraftforge.fml.loading.FMLClientLaunchProvider.lambda$launchService$0(FMLClientLaunchProvider.java:51) ~[forge-1.16.5-36.0.54.jar:36.0] {}
	at cpw.mods.modlauncher.LaunchServiceHandlerDecorator.launch(LaunchServiceHandlerDecorator.java:37) [modlauncher-8.0.9.jar:?] {re:classloading}
	at cpw.mods.modlauncher.LaunchServiceHandler.launch(LaunchServiceHandler.java:54) [modlauncher-8.0.9.jar:?] {re:classloading}
	at cpw.mods.modlauncher.LaunchServiceHandler.launch(LaunchServiceHandler.java:72) [modlauncher-8.0.9.jar:?] {re:classloading}
	at cpw.mods.modlauncher.Launcher.run(Launcher.java:82) [modlauncher-8.0.9.jar:?] {re:classloading}
	at cpw.mods.modlauncher.Launcher.main(Launcher.java:66) [modlauncher-8.0.9.jar:?] {re:classloading}


A detailed walkthrough of the error, its code path and all known details is as follows:
---------------------------------------------------------------------------------------

-- Affected screen --
Details:
	Screen name: net.minecraft.client.gui.screen.WorldSelectionScreen
Stacktrace:
	at net.minecraft.client.gui.screen.Screen.func_231153_a_(Screen.java:427) ~[?:?] {re:mixin,pl:accesstransformer:B,pl:runtimedistcleaner:A,re:classloading,pl:accesstransformer:B,pl:mixin:APP:quark.mixins.json:client.ScreenMixin,pl:mixin:A,pl:runtimedistcleaner:A}
	at net.minecraft.client.MouseHelper.func_198023_a(MouseHelper.java:85) ~[?:?] {re:mixin,pl:runtimedistcleaner:A,re:classloading,pl:mixin:APP:randompatches.mixins.json:client.keybindings.MouseHelperMixin,pl:mixin:A,pl:runtimedistcleaner:A}
	at net.minecraft.client.MouseHelper.func_228030_c_(MouseHelper.java:175) ~[?:?] {re:mixin,pl:runtimedistcleaner:A,re:classloading,pl:mixin:APP:randompatches.mixins.json:client.keybindings.MouseHelperMixin,pl:mixin:A,pl:runtimedistcleaner:A}
	at net.minecraft.util.concurrent.ThreadTaskExecutor.execute(ThreadTaskExecutor.java:106) ~[?:?] {re:mixin,pl:accesstransformer:B,re:computing_frames,pl:accesstransformer:B,xf:OptiFine:default,re:classloading,pl:accesstransformer:B,xf:OptiFine:default}
	at net.minecraft.client.MouseHelper.func_228028_b_(MouseHelper.java:174) ~[?:?] {re:mixin,pl:runtimedistcleaner:A,re:classloading,pl:mixin:APP:randompatches.mixins.json:client.keybindings.MouseHelperMixin,pl:mixin:A,pl:runtimedistcleaner:A}
	at org.lwjgl.glfw.GLFWMouseButtonCallbackI.callback(GLFWMouseButtonCallbackI.java:36) ~[lwjgl-glfw-3.2.2.jar:build 10] {}
	at org.lwjgl.system.JNI.invokeV(Native Method) ~[lwjgl-3.2.2.jar:build 10] {}
	at org.lwjgl.glfw.GLFW.glfwPollEvents(GLFW.java:3101) ~[lwjgl-glfw-3.2.2.jar:build 10] {}
	at com.mojang.blaze3d.systems.RenderSystem.flipFrame(SourceFile:102) ~[?:?] {re:classloading}
	at net.minecraft.client.MainWindow.func_227802_e_(MainWindow.java:398) ~[?:?] {re:mixin,re:classloading,xf:OptiFine:default}
	at net.minecraft.client.Minecraft.func_195542_b(Minecraft.java:996) ~[?:?] {re:mixin,pl:accesstransformer:B,pl:runtimedistcleaner:A,re:classloading,pl:accesstransformer:B,pl:mixin:APP:notenoughcrashes.mixins.json:client.MixinMinecraftClient,pl:mixin:APP:randompatches.mixins.json:client.MinecraftMixin,pl:mixin:APP:charm.mixins.json:accessor.MinecraftAccessor,pl:mixin:APP:mining_helmet.mixins.json:MinecraftMixin,pl:mixin:APP:nowplaying.mixins.json:MinecraftClientMixin,pl:mixin:A,pl:runtimedistcleaner:A}
	at net.minecraft.client.Minecraft.func_99999_d(Minecraft.java:607) ~[?:?] {re:mixin,pl:accesstransformer:B,pl:runtimedistcleaner:A,re:classloading,pl:accesstransformer:B,pl:mixin:APP:notenoughcrashes.mixins.json:client.MixinMinecraftClient,pl:mixin:APP:randompatches.mixins.json:client.MinecraftMixin,pl:mixin:APP:charm.mixins.json:accessor.MinecraftAccessor,pl:mixin:APP:mining_helmet.mixins.json:MinecraftMixin,pl:mixin:APP:nowplaying.mixins.json:MinecraftClientMixin,pl:mixin:A,pl:runtimedistcleaner:A}
	at net.minecraft.client.Minecraft.handler$zzh000$afterCrashHandled(Minecraft.java:2540) ~[?:?] {re:mixin,pl:accesstransformer:B,pl:runtimedistcleaner:A,re:classloading,pl:accesstransformer:B,pl:mixin:APP:notenoughcrashes.mixins.json:client.MixinMinecraftClient,pl:mixin:APP:randompatches.mixins.json:client.MinecraftMixin,pl:mixin:APP:charm.mixins.json:accessor.MinecraftAccessor,pl:mixin:APP:mining_helmet.mixins.json:MinecraftMixin,pl:mixin:APP:nowplaying.mixins.json:MinecraftClientMixin,pl:mixin:A,pl:runtimedistcleaner:A}
	at net.minecraft.client.Minecraft.func_99999_d(Minecraft.java:623) ~[?:?] {re:mixin,pl:accesstransformer:B,pl:runtimedistcleaner:A,re:classloading,pl:accesstransformer:B,pl:mixin:APP:notenoughcrashes.mixins.json:client.MixinMinecraftClient,pl:mixin:APP:randompatches.mixins.json:client.MinecraftMixin,pl:mixin:APP:charm.mixins.json:accessor.MinecraftAccessor,pl:mixin:APP:mining_helmet.mixins.json:MinecraftMixin,pl:mixin:APP:nowplaying.mixins.json:MinecraftClientMixin,pl:mixin:A,pl:runtimedistcleaner:A}
	at net.minecraft.client.Minecraft.handler$zzh000$afterCrashHandled(Minecraft.java:2540) ~[?:?] {re:mixin,pl:accesstransformer:B,pl:runtimedistcleaner:A,re:classloading,pl:accesstransformer:B,pl:mixin:APP:notenoughcrashes.mixins.json:client.MixinMinecraftClient,pl:mixin:APP:randompatches.mixins.json:client.MinecraftMixin,pl:mixin:APP:charm.mixins.json:accessor.MinecraftAccessor,pl:mixin:APP:mining_helmet.mixins.json:MinecraftMixin,pl:mixin:APP:nowplaying.mixins.json:MinecraftClientMixin,pl:mixin:A,pl:runtimedistcleaner:A}
	at net.minecraft.client.Minecraft.func_99999_d(Minecraft.java:623) ~[?:?] {re:mixin,pl:accesstransformer:B,pl:runtimedistcleaner:A,re:classloading,pl:accesstransformer:B,pl:mixin:APP:notenoughcrashes.mixins.json:client.MixinMinecraftClient,pl:mixin:APP:randompatches.mixins.json:client.MinecraftMixin,pl:mixin:APP:charm.mixins.json:accessor.MinecraftAccessor,pl:mixin:APP:mining_helmet.mixins.json:MinecraftMixin,pl:mixin:APP:nowplaying.mixins.json:MinecraftClientMixin,pl:mixin:A,pl:runtimedistcleaner:A}
	at net.minecraft.client.main.Main.main(Main.java:184) ~[Forge%20OptiFine%201.16.5.jar:?] {re:classloading,re:mixin,pl:runtimedistcleaner:A,pl:mixin:A,pl:runtimedistcleaner:A}
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method) ~[?:1.8.0_251] {}
	at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source) ~[?:1.8.0_251] {}
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source) ~[?:1.8.0_251] {}
	at java.lang.reflect.Method.invoke(Unknown Source) ~[?:1.8.0_251] {}
	at net.minecraftforge.fml.loading.FMLClientLaunchProvider.lambda$launchService$0(FMLClientLaunchProvider.java:51) ~[forge-1.16.5-36.0.54.jar:36.0] {}
	at cpw.mods.modlauncher.LaunchServiceHandlerDecorator.launch(LaunchServiceHandlerDecorator.java:37) [modlauncher-8.0.9.jar:?] {re:classloading}
	at cpw.mods.modlauncher.LaunchServiceHandler.launch(LaunchServiceHandler.java:54) [modlauncher-8.0.9.jar:?] {re:classloading}
	at cpw.mods.modlauncher.LaunchServiceHandler.launch(LaunchServiceHandler.java:72) [modlauncher-8.0.9.jar:?] {re:classloading}
	at cpw.mods.modlauncher.Launcher.run(Launcher.java:82) [modlauncher-8.0.9.jar:?] {re:classloading}
	at cpw.mods.modlauncher.Launcher.main(Launcher.java:66) [modlauncher-8.0.9.jar:?] {re:classloading}

-- System Details --
Details:
	Minecraft Version: 1.16.5
	Minecraft Version ID: 1.16.5
	Operating System: Windows 10 (amd64) version 10.0
	Java Version: 1.8.0_251, Oracle Corporation
	Java VM Version: Java HotSpot(TM) 64-Bit Server VM (mixed mode), Oracle Corporation
	Memory: 2519527240 bytes (2402 MB) / 3724541952 bytes (3552 MB) up to 6341787648 bytes (6048 MB)
	CPUs: 12
	JVM Flags: 10 total; -Xmn128M -Xms3011M -Xmx6023M -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -XX:HeapDumpPath=MojangTricksIntelDriversForPerformance_javaw.exe_minecraft.exe.heapdump
	ModLauncher: 8.0.9+86+master.3cf110c
	ModLauncher launch target: fmlclient
	ModLauncher naming: srg
	ModLauncher services: 
		/mixin-0.8.2.jar mixin PLUGINSERVICE 
		/eventbus-4.0.0.jar eventbus PLUGINSERVICE 
		/forge-1.16.5-36.0.54.jar object_holder_definalize PLUGINSERVICE 
		/forge-1.16.5-36.0.54.jar runtime_enum_extender PLUGINSERVICE 
		/accesstransformers-3.0.1.jar accesstransformer PLUGINSERVICE 
		/forge-1.16.5-36.0.54.jar capability_inject_definalize PLUGINSERVICE 
		/forge-1.16.5-36.0.54.jar runtimedistcleaner PLUGINSERVICE 
		/mixin-0.8.2.jar mixin TRANSFORMATIONSERVICE 
		/OptiFine_1.16.5_HD_U_G7.jar OptiFine TRANSFORMATIONSERVICE 
		/OptiForge-MC1.16.5-0.5.3.jar optiforge TRANSFORMATIONSERVICE 
		/forge-1.16.5-36.0.54.jar fml TRANSFORMATIONSERVICE 
		/OptiForge-MC1.16.5-0.5.3.jar FakeOptiFine TRANSFORMATIONSERVICE 
		/MixinBootstrap-1.0.5.jar mixinbootstrap TRANSFORMATIONSERVICE 
		/OptiForge-MC1.16.5-0.5.3.jar optiforgewrapper TRANSFORMATIONSERVICE 
	FML: 36.0
	Forge: net.minecraftforge:36.0.54
	FML Language Providers: 
		javafml@36.0
		minecraft@1
	Mod List: 
		notenoughcrashes-3.1.6-forge.jar                  |Not Enough Crashes            |notenoughcrashes              |3.1.6               |DONE      |NOSIGNATURE
		prefab-1.6.5.3.jar                                |Prefab                        |prefab                        |1.6.5.3             |DONE      |NOSIGNATURE
		DoggyTalents-1.16.4-2.0.1.3.jar                   |Doggy Talents 2               |doggytalents                  |2.0.1.3             |DONE      |NOSIGNATURE
		GoldenChorusFruit1.16.x_1.0.jar                   |Golden Chorus Fruit           |goldenchorus                  |1.16.x-1.0.0        |DONE      |NOSIGNATURE
		looot-1.16.4-1.0.0.3.jar                          |Looot                         |looot                         |1.0.0.3             |DONE      |NOSIGNATURE
		KleeSlabs_1.16.3-9.2.0.jar                        |KleeSlabs                     |kleeslabs                     |9.2.0               |DONE      |NOSIGNATURE
		guiclock_1.16.4_2.0.jar                           |GUI Clock                     |guiclock                      |2.0                 |DONE      |NOSIGNATURE
		ChickenDropFeathers_1.0_forge_1.16.4_35.1.0.jar   |ChickenDropFeathers           |chickendropfeathersmod        |1.0                 |DONE      |NOSIGNATURE
		BetterCaves-Forge-1.16.4-1.1.1.jar                |YUNG's Better Caves           |bettercaves                   |1.16.4-1.1.1        |DONE      |NOSIGNATURE
		citadel-1.6.1.jar                                 |Citadel                       |citadel                       |1.6.1               |DONE      |NOSIGNATURE
		alexsmobs-1.10.1.jar                              |Alex's Mobs                   |alexsmobs                     |1.10.1              |DONE      |NOSIGNATURE
		YungsApi-1.16.4-Forge-4.jar                       |YUNG's API                    |yungsapi                      |1.16.4-Forge-4      |DONE      |NOSIGNATURE
		MutantBeasts_1.16.4_1.1.3.jar                     |Mutant Beasts                 |mutantbeasts                  |1.16.4-1.1.3        |DONE      |d9:be:bd:b6:9a:e4:14:aa:05:67:fb:84:06:77:a0:c5:10:ec:27:15:1b:d6:c0:88:49:9a:ef:26:77:61:0b:5e
		guardvillagers-1.16.4-1.1.10.jar                  |Guard Villagers               |guardvillagers                |1.1.10              |DONE      |NOSIGNATURE
		randompatches-2.4.4-forge.jar                     |RandomPatches                 |randompatches                 |2.4.4-forge         |DONE      |92:f6:29:d4:09:89:f5:f5:98:5e:20:34:31:d0:7b:58:22:06:bd:a5:d1:6a:92:6e:ac:3d:8d:18:c5:b2:5b:d7
		JustEnoughResources-1.16.3-0.12.0.100.jar         |Just Enough Resources         |jeresources                   |0.12.0.100          |DONE      |NOSIGNATURE
		lavasponge_1.0.2_1.16.4.jar                       |LavaSponge                    |lavasponge                    |1.0.2-1.16.4        |DONE      |NOSIGNATURE
		supplementaries-1.16.5-0.9.27.jar                 |Supplementaries               |supplementaries               |1.16.5-0.9.27       |DONE      |NOSIGNATURE
		konkrete_1.1.3_MC_1.16.2-1.16.5.jar               |Konkrete                      |konkrete                      |1.1.3               |DONE      |NOSIGNATURE
		Upgraded+Netherite+1.16.4+-+1.8.0.jar             |Upgraded Netherite            |upgradednetherite             |1.7.0               |DONE      |NOSIGNATURE
		LootingBowEnchantment_1.16.3_2.0.0.jar            |LootingBowEnchantment         |lootingbowenchantment         |2.0.0               |DONE      |88:98:cc:ab:ca:56:34:c7:e9:4c:b9:02:3b:c5:1e:b3:21:fa:09:64:3e:eb:2d:09:70:81:e6:46:eb:1c:17:65
		structure_gel-1.16.4-1.7.5.jar                    |Structure Gel API             |structure_gel                 |1.7.5               |DONE      |NOSIGNATURE
		mcw-bridges-1.0.5-mc1.16.5-4.jar                  |Macaw's Bridges               |mcwbridges                    |1.0.5               |DONE      |NOSIGNATURE
		AmbientSounds_v3.1.4_mc1.16.42.jar                |Ambient Sounds                |ambientsounds                 |3.0.3               |DONE      |NOSIGNATURE
		enchantedgoldenapplecrafting-1.16.4-1.0.jar       |Enchanted Golden Apple Craftin|enchantedgoldenapplecrafting  |1.0                 |DONE      |NOSIGNATURE
		valhelsia_structures-16.0.5.jar                   |Valhelsia Structures          |valhelsia_structures          |16.0.5              |DONE      |NOSIGNATURE
		dungeons_plus-1.16.4-1.1.3.jar                    |Dungeons Plus                 |dungeons_plus                 |1.1.3               |DONE      |NOSIGNATURE
		horsestatsmod-MC1.16.x-1.3.4.jar                  |Horse Stats Mod               |horsestatsmod                 |1.3.4               |DONE      |NOSIGNATURE
		simplefarming-1.16.5-1.3.6.jar                    |Simple Farming                |simplefarming                 |1.16.4-1.3.6        |DONE      |NOSIGNATURE
		fairylights-4.0.4-1.16.4.jar                      |Fairy Lights                  |fairylights                   |4.0.4               |DONE      |NOSIGNATURE
		EinsteinsLibrary-1.4_MC1.16.4.jar                 |Einstein's Library            |einsteins_library             |1.4                 |DONE      |NOSIGNATURE
		curios-forge-1.16.5-4.0.5.1.jar                   |Curios API                    |curios                        |1.16.5-4.0.5.1      |DONE      |NOSIGNATURE
		Curious+Armor+Stands-1.16.3-2.0.2.jar             |Curious Armor Stands          |curious_armor_stands          |1.16.3-2.0.2        |DONE      |NOSIGNATURE
		leap-1.16.4-1.0.1.jar                             |Leap                          |leap                          |1.0.1               |DONE      |NOSIGNATURE
		collective_1.16.4_1.53.jar                        |Collective                    |collective                    |1.53                |DONE      |NOSIGNATURE
		Desolation1.0.3b1.16.5.jar                        |Desolation (Forge)            |desolation                    |1.0.3b              |DONE      |NOSIGNATURE
		travelers_index-1.16.4-1.0.2.jar                  |Traveler's Index              |travelers_index               |1.16.4-1.0.2        |DONE      |NOSIGNATURE
		sapience_1.16.4_1.1.1.jar                         |Sapience                      |sapience                      |1.1.1               |DONE      |NOSIGNATURE
		furniture_7.0.0_pre19_1.16.3.jar                  |MrCrayfish's Furniture Mod    |cfm                           |7.0.0-pre19         |DONE      |NOSIGNATURE
		architectury-1.7.117-forge.jar                    |Architectury                  |architectury                  |1.7.117             |DONE      |NOSIGNATURE
		curiouselytra-forge-1.16.3-4.0.0.1.jar            |Curious Elytra                |curiouselytra                 |1.16.3-4.0.0.1      |DONE      |NOSIGNATURE
		ai-improvements-1.16.2-0.3.0.jar                  |AI-Improvements               |aiimprovements                |0.3.0               |DONE      |NOSIGNATURE
		Chimes_1.16.4_0.9.4.jar                           |Chimes                        |chimes                        |0.9.4               |DONE      |NOSIGNATURE
		cherishedworlds-forge-1.16.4-5.1.0.0.jar          |Cherished Worlds              |cherishedworlds               |1.16.4-5.1.0.0      |DONE      |NOSIGNATURE
		light-overlay-5.8.0.jar                           |Light Overlay                 |lightoverlay                  |5.8.0               |DONE      |NOSIGNATURE
		ItemPhysic_v1.4.15_mc1.16.5.jar                   |ItemPhysic                    |itemphysic                    |1.6.0               |DONE      |NOSIGNATURE
		cloth-config-4.11.14-forge.jar                    |Cloth Config v4 API           |cloth-config                  |4.11.14             |DONE      |NOSIGNATURE
		reusable_rockets_1.16.4_1.0.1.jar                 |Reusable Rockets              |reusable_rockets              |1.16.4-1.0.1        |DONE      |NOSIGNATURE
		charm-forge-1.16.4-2.1.9.jar                      |Charm                         |charm                         |2.1.9               |DONE      |NOSIGNATURE
		CodeChickenLib-1.16.4-3.5.0.398-universal.jar     |CodeChicken Lib               |codechickenlib                |3.5.0.398           |DONE      |31:e6:db:63:47:4a:6e:e0:0a:2c:11:d1:76:db:4e:82:ff:56:2d:29:93:d2:e5:02:bd:d3:bd:9d:27:47:a5:71
		BetterMineshafts-Forge-1.16.4-2.0.1.jar           |YUNG's Better Mineshafts      |bettermineshafts              |1.16.4-2.0.1        |DONE      |NOSIGNATURE
		geckolib-forge-1.16.5-3.0.14.jar                  |GeckoLib                      |geckolib3                     |3.0.14              |DONE      |NOSIGNATURE
		BetterAdvancements_1.16.4_0.1.0.103.jar           |Better Advancements           |betteradvancements            |0.1.0.103           |DONE      |NOSIGNATURE
		SaveMyStronghold-1.16.4-1.0.jar                   |Save My Stronghold!           |savemystronghold              |1.16.4-1.0          |DONE      |NOSIGNATURE
		QuarkOddities-1.16.3.jar                          |Quark Oddities                |quarkoddities                 |1.16.3              |DONE      |NOSIGNATURE
		Kiwi-1.16.3-3.4.1.jar                             |Kiwi                          |kiwi                          |3.4.1               |DONE      |NOSIGNATURE
		Notes-1.16.5-1.2.3.jar                            |Notes                         |notes                         |1.16.5-1.2.3        |DONE      |NOSIGNATURE
		mining-helmet-1.16.4-2.0.0.jar                    |Mining Helmet                 |mining_helmet                 |2.0.0               |DONE      |NOSIGNATURE
		jei-1.16.4-7.6.1.71.jar                           |Just Enough Items             |jei                           |7.6.1.71            |DONE      |NOSIGNATURE
		OptiForge-MC1.16.5-0.5.3.jar                      |OptiForge                     |optiforge                     |0.5.3               |DONE      |NOSIGNATURE
		the-conjurer-1.16.4-1.0.13.jar                    |The Conjurer                  |conjurer_illager              |1.0.13              |DONE      |NOSIGNATURE
		callablehorses-1.16.3-1.2.1.4.jar                 |Callable Horses               |callablehorses                |1.2.1.4             |DONE      |8c:03:ac:7d:21:62:65:e2:83:91:f3:22:57:99:ed:75:78:1e:db:de:03:99:ef:53:3b:59:95:18:01:bc:84:a9
		abnormals_core-1.16.5-3.1.1.jar                   |Abnormals Core                |abnormals_core                |3.1.1               |DONE      |NOSIGNATURE
		buzzier_bees-1.16.4-3.0.0.jar                     |Buzzier Bees                  |buzzier_bees                  |3.0.0               |DONE      |NOSIGNATURE
		justmobheads_1.16.4_3.7.jar                       |Just Mob Heads                |justmobheads                  |3.7                 |DONE      |NOSIGNATURE
		caelus-forge-1.16.5-2.1.2.2.jar                   |Caelus API                    |caelus                        |1.16.5-2.1.2.2      |DONE      |NOSIGNATURE
		Waystones_1.16.3-7.3.1.jar                        |Waystones                     |waystones                     |7.3.1               |DONE      |NOSIGNATURE
		Clumps-6.0.0.17.jar                               |Clumps                        |clumps                        |6.0.0.17            |DONE      |NOSIGNATURE
		journeymap_1.16.5_5.7.1b3.jar                     |Journeymap                    |journeymap                    |5.7.1b3             |DONE      |NOSIGNATURE
		NaturesCompass-1.16.5-1.8.6.jar                   |Nature's Compass              |naturescompass                |1.16.5-1.8.6        |DONE      |NOSIGNATURE
		Artifacts-1.16.5-2.8.4.jar                        |Artifacts                     |artifacts                     |1.16.5-2.8.4        |DONE      |NOSIGNATURE
		SereneSeasons-1.16.4-4.0.0.87-universal.jar       |Serene Seasons                |sereneseasons                 |1.16.4-4.0.0.87     |DONE      |NOSIGNATURE
		FestiveCreepers_1.16.4_1.1.1.jar                  |Festive Creepers              |festive_creepers              |1.16.4-1.1.1        |DONE      |NOSIGNATURE
		decorative_blocks-1.16.4-1.7.2.jar                |Decorative Blocks             |decorative_blocks             |1.7.2               |DONE      |NOSIGNATURE
		decorative_blocks_abnormals-1.16.4-1.1.jar        |Decorative Blocks Abnormals   |decorative_blocks_abnormals   |1.1                 |DONE      |NOSIGNATURE
		DungeonCrawl-1.16.3-2.2.4.jar                     |Dungeon Crawl                 |dungeoncrawl                  |2.2.4               |DONE      |NOSIGNATURE
		curioofundying-forge-1.16.4-5.1.0.0.jar           |Curio of Undying              |curioofundying                |1.16.4-5.1.0.0      |DONE      |NOSIGNATURE
		iceandfire-2.1.6-1.16.4.jar                       |Ice and Fire                  |iceandfire                    |2.1.6-1.16.4        |DONE      |NOSIGNATURE
		environmentalcreepers_forge_1.16.3_1.6.0.jar      |Environmental Creepers        |environmentalcreepers         |1.6.0               |DONE      |NOSIGNATURE
		CraftTweaker-1.16.5-7.1.0.130.jar                 |CraftTweaker                  |crafttweaker                  |7.1.0.130           |DONE      |NOSIGNATURE
		UsefulSlime-1.0_MC1.16.5.jar                      |Useful Slime                  |usefulslime                   |1.0                 |DONE      |NOSIGNATURE
		forge-1.16.5-36.0.54-universal.jar                |Forge                         |forge                         |36.0.54             |DONE      |22:af:21:d8:19:82:7f:93:94:fe:2b:ac:b7:e4:41:57:68:39:87:b1:a7:5c:c6:44:f9:25:74:21:14:f5:0d:90
		Waddles_1.16.4_0.8.11.jar                         |Waddles                       |waddles                       |1.16.4-0.8.11       |DONE      |NOSIGNATURE
		scuba-gear-1.16.5-1.0.2.jar                       |Scuba Gear                    |scuba_gear                    |1.0.2               |DONE      |NOSIGNATURE
		nether_extension-1.16.4-0.3.0.jar                 |Nether Extension              |nether_extension              |1.16.4-0.3.0        |DONE      |NOSIGNATURE
		dash_1.16.4_1.0.1.jar                             |Dash                          |dash                          |1.0.1               |DONE      |NOSIGNATURE
		ironchest_1.16.4_11.2.10.jar                      |Iron Chests                   |ironchest                     |1.16.4-11.2.10      |DONE      |NOSIGNATURE
		forge-1.16.5-36.0.54-client.jar                   |Minecraft                     |minecraft                     |1.16.5              |DONE      |NOSIGNATURE
		upgrade_aquatic-1.16.5-3.0.1.jar                  |Upgrade Aquatic               |upgrade_aquatic               |3.0.1               |DONE      |NOSIGNATURE
		endergetic-1.16.4-3.0.0.jar                       |The Endergetic Expansion      |endergetic                    |3.0.0               |DONE      |NOSIGNATURE
		theoneprobe-1.16-3.0.7.jar                        |The One Probe                 |theoneprobe                   |1.16-3.0.7          |DONE      |NOSIGNATURE
		swingthroughgrass_1.16.4_1.5.3.jar                |SwingThroughGrass             |swingthroughgrass             |1.16.4-1.5.3        |DONE      |NOSIGNATURE
		MouseTweaks-2.14-mc1.16.2.jar                     |Mouse Tweaks                  |mousetweaks                   |2.14                |DONE      |NOSIGNATURE
		CreativeCore_v2.0.10_mc1.16.4.jar                 |CreativeCore                  |creativecore                  |2.0.0               |DONE      |NOSIGNATURE
		smoothboot-forge-1.16.4-1.2.0.jar                 |Smooth Boot                   |smoothboot                    |1.16.4-1.2.0        |DONE      |NOSIGNATURE
		ChickenChunks-1.16.4-2.7.0.85-universal.jar       |ChickenChunks                 |chickenchunks                 |2.7.0.85            |DONE      |31:e6:db:63:47:4a:6e:e0:0a:2c:11:d1:76:db:4e:82:ff:56:2d:29:93:d2:e5:02:bd:d3:bd:9d:27:47:a5:71
		atmospheric-1.16.5-3.1.0.jar                      |Atmospheric                   |atmospheric                   |3.1.0               |DONE      |NOSIGNATURE
		paintings_1.16.43_7.0.0.1.jar                     |Paintings ++                  |paintings                     |1.16.4-6.0.1.5      |DONE      |NOSIGNATURE
		savageandravage-1.16.4-3.0.0.jar                  |Savage & Ravage               |savageandravage               |3.0.0               |DONE      |NOSIGNATURE
		rediscovered-1.16.4-1.3.7.jar                     |Rediscovered                  |rediscovered                  |1.3.7               |DONE      |NOSIGNATURE
		gravestone-1.16.4-1.0.9.jar                       |Gravestone Mod                |gravestone                    |1.16.4-1.0.9        |DONE      |NOSIGNATURE
		AutoRegLib-1.6-49.jar                             |AutoRegLib                    |autoreglib                    |1.6-49              |DONE      |NOSIGNATURE
		Quark-r2.4-312.jar                                |Quark                         |quark                         |r2.4-312            |DONE      |NOSIGNATURE
		StorageDrawers-1.16.3-8.2.2.jar                   |Storage Drawers               |storagedrawers                |8.2.2               |DONE      |NOSIGNATURE
		overworld_quartz-1.16.4-1.1.0.2.jar               |Overworld Quartz              |overworld_quartz              |1.1.0.1             |DONE      |NOSIGNATURE
		backpacked-1.10.0-1.16.3.jar                      |Backpacked                    |backpacked                    |1.10.0              |DONE      |NOSIGNATURE
		backpacker-1.3.0-1.16.3.jar                       |Backpacker                    |backpacker                    |1.3.0               |DONE      |NOSIGNATURE
		now_playing_1.1.5_forge_1.16.4.jar                |Now Playing                   |nowplaying                    |1.1.5               |DONE      |NOSIGNATURE
		structurize-0.13.113-ALPHA-universal.jar          |Structurize                   |structurize                   |0.13.113-ALPHA      |DONE      |NOSIGNATURE
		fancymenu_1.7.1_MC_1.16.2-1.16.5.jar              |FancyMenu                     |fancymenu                     |1.8.0               |DONE      |NOSIGNATURE
		minecolonies-0.13.596-ALPHA-universal.jar         |MineColonies                  |minecolonies                  |0.13.596-ALPHA      |DONE      |NOSIGNATURE
		workshopsofdoom-1.16.4-1.1.0.1.jar                |Workshops of Doom             |workshopsofdoom               |1.1.0.1             |DONE      |NOSIGNATURE
		hunterillager-1.16.4-1.2.2.jar                    |HunterIllager                 |hunterillager                 |1.16.4-1.2.2        |DONE      |NOSIGNATURE
		AppleSkin_mc1.16.2_forge_1.0.14.jar               |AppleSkin                     |appleskin                     |1.0.14              |DONE      |NOSIGNATURE
		ferritecore-1.1.1.jar                             |Ferrite Core                  |ferritecore                   |1.1.1               |DONE      |41:ce:50:66:d1:a0:05:ce:a1:0e:02:85:9b:46:64:e0:bf:2e:cf:60:30:9a:fe:0c:27:e0:63:66:9a:84:ce:8a
		SoundFilters_0.14_for_1.16.2.jar                  |Sound Filters                 |soundfilters                  |0.14_for_1.16.2     |DONE      |NOSIGNATURE
	Crash Report UUID: 70b6b717-379a-4efd-b089-ade75db1aca9
	Kiwi Modules: 
		kiwi:contributors
		kiwi:data
	Suspected Mods: Forge (forge), Alex's Mobs (alexsmobs), Alex's Mobs (alexsmobs), Alex's Mobs (alexsmobs)
	Launched Version: Forge OptiFine 1.16.5
	Backend library: LWJGL version 3.2.2 build 10
	Backend API: GeForce GTX 1650/PCIe/SSE2 GL version 4.6.0 NVIDIA 461.09, NVIDIA Corporation
	GL Caps: Using framebuffer using OpenGL 3.0
	Using VBOs: Yes
	Is Modded: Definitely; Client brand changed to 'forge'
	Type: Client (map_client.txt)
	Graphics mode: fast
	Resource Packs: vanilla, programer_art, file/? ???, file/??????? (incompatible), file/? ??? 3 (incompatible)
	Current Language: ??????? (??????)
	CPU: 12x Intel(R) Xeon(R) CPU E5-2620 v3 @ 2.40GHz
	Client Crashes Since Restart: 3
	Integrated Server Crashes Since Restart: 0
	OptiFine Version: OptiFine_1.16.5_HD_U_G7
	OptiFine Build: 20210305-003221
	Render Distance Chunks: 8
	Mipmaps: 0
	Anisotropic Filtering: 1
	Antialiasing: 0
	Multitexture: false
	Shaders: ? ???
	OpenGlVersion: 4.6.0 NVIDIA 461.09
	OpenGlRenderer: GeForce GTX 1650/PCIe/SSE2
	OpenGlVendor: NVIDIA Corporation
	CpuCount: 12
	Launched Version: Forge OptiFine 1.16.5
	Backend library: LWJGL version 3.2.2 build 10
	Backend API: GeForce GTX 1650/PCIe/SSE2 GL version 4.6.0 NVIDIA 461.09, NVIDIA Corporation
	GL Caps: Using framebuffer using OpenGL 3.0
	Using VBOs: Yes
	Is Modded: Definitely; Client brand changed to 'forge'
	Type: Client (map_client.txt)
	Graphics mode: fast
	Resource Packs: vanilla, programer_art, file/? ???, file/??????? (incompatible), file/? ??? 3 (incompatible)
	Current Language: ??????? (??????)
	CPU: 12x Intel(R) Xeon(R) CPU E5-2620 v3 @ 2.40GHz