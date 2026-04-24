.class Lcom/jirbo/adcolony/ADCManifest$AdTracking;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdTracking"
.end annotation


# instance fields
.field _continue:Ljava/lang/String;

.field cancel:Ljava/lang/String;

.field card_dissolved:Ljava/lang/String;

.field card_shown:Ljava/lang/String;

.field complete:Ljava/lang/String;

.field custom_event:Ljava/lang/String;

.field download:Ljava/lang/String;

.field first_quartile:Ljava/lang/String;

.field html5_interaction:Ljava/lang/String;

.field in_video_engagement:Ljava/lang/String;

.field info:Ljava/lang/String;

.field lookup:Lcom/jirbo/adcolony/ADCData$Table;

.field midpoint:Ljava/lang/String;

.field native_complete:Ljava/lang/String;

.field native_first_quartile:Ljava/lang/String;

.field native_midpoint:Ljava/lang/String;

.field native_overlay_click:Ljava/lang/String;

.field native_start:Ljava/lang/String;

.field native_third_quartile:Ljava/lang/String;

.field replay:Ljava/lang/String;

.field reward_v4vc:Ljava/lang/String;

.field skip:Ljava/lang/String;

.field sound_mute:Ljava/lang/String;

.field sound_unmute:Ljava/lang/String;

.field start:Ljava/lang/String;

.field third_quartile:Ljava/lang/String;

.field video_expanded:Ljava/lang/String;

.field video_paused:Ljava/lang/String;

.field video_resumed:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Lcom/jirbo/adcolony/ADCData$Table;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    return-void
.end method


# virtual methods
.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 4
    .param p1, "tracking_info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 171
    if-nez p1, :cond_0

    .line 239
    :goto_0
    return v3

    .line 173
    :cond_0
    const-string v0, "replay"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->replay:Ljava/lang/String;

    .line 174
    const-string v0, "card_shown"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->card_shown:Ljava/lang/String;

    .line 175
    const-string v0, "html5_interaction"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->html5_interaction:Ljava/lang/String;

    .line 176
    const-string v0, "cancel"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->cancel:Ljava/lang/String;

    .line 177
    const-string v0, "download"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->download:Ljava/lang/String;

    .line 178
    const-string v0, "skip"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->skip:Ljava/lang/String;

    .line 179
    const-string v0, "info"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->info:Ljava/lang/String;

    .line 180
    const-string v0, "custom_event"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->custom_event:Ljava/lang/String;

    .line 181
    const-string v0, "midpoint"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->midpoint:Ljava/lang/String;

    .line 182
    const-string v0, "card_dissolved"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->card_dissolved:Ljava/lang/String;

    .line 183
    const-string v0, "start"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->start:Ljava/lang/String;

    .line 184
    const-string v0, "third_quartile"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->third_quartile:Ljava/lang/String;

    .line 185
    const-string v0, "complete"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->complete:Ljava/lang/String;

    .line 186
    const-string v0, "continue"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->_continue:Ljava/lang/String;

    .line 187
    const-string v0, "in_video_engagement"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->in_video_engagement:Ljava/lang/String;

    .line 188
    const-string v0, "reward_v4vc"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->reward_v4vc:Ljava/lang/String;

    .line 189
    const-string v0, "first_quartile"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->first_quartile:Ljava/lang/String;

    .line 192
    const-string v0, "video_expanded"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->video_expanded:Ljava/lang/String;

    .line 193
    const-string v0, "sound_mute"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->sound_mute:Ljava/lang/String;

    .line 194
    const-string v0, "sound_unmute"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->sound_unmute:Ljava/lang/String;

    .line 195
    const-string v0, "video_paused"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->video_paused:Ljava/lang/String;

    .line 196
    const-string v0, "video_resumed"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->video_resumed:Ljava/lang/String;

    .line 197
    const-string v0, "native_start"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->native_start:Ljava/lang/String;

    .line 198
    const-string v0, "native_first_quartile"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->native_first_quartile:Ljava/lang/String;

    .line 199
    const-string v0, "native_midpoint"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->native_midpoint:Ljava/lang/String;

    .line 200
    const-string v0, "native_third_quartile"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->native_third_quartile:Ljava/lang/String;

    .line 201
    const-string v0, "native_complete"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->native_complete:Ljava/lang/String;

    .line 202
    const-string v0, "native_overlay_click"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->native_overlay_click:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "replay"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->replay:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "card_shown"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->card_shown:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "html5_interaction"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->html5_interaction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "cancel"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->cancel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "download"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->download:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "skip"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->skip:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "info"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->info:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "custom_event"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->custom_event:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "midpoint"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->midpoint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "card_dissolved"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->card_dissolved:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "start"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->start:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "third_quartile"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->third_quartile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "complete"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->complete:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "continue"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->_continue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "in_video_engagement"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->in_video_engagement:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "reward_v4vc"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->reward_v4vc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "first_quartile"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->first_quartile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "video_expanded"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->video_expanded:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "sound_mute"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->sound_mute:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "sound_unmute"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->sound_unmute:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "video_paused"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->video_paused:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "video_resumed"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->video_resumed:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "native_start"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->native_start:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "native_first_quartile"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->native_first_quartile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "native_midpoint"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->native_midpoint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "native_third_quartile"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->native_third_quartile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "native_complete"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->native_complete:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "native_overlay_click"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->native_overlay_click:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
