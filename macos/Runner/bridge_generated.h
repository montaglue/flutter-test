#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
typedef struct _Dart_Handle* Dart_Handle;

typedef struct DartCObject DartCObject;

typedef int64_t DartPort;

typedef bool (*DartPostCObjectFnType)(DartPort port_id, void *message);

typedef struct DartCObject *WireSyncReturn;

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_Serialized {
  struct wire_uint_8_list *bytes;
  struct wire_uint_8_list *formula;
} wire_Serialized;

void store_dart_post_cobject(DartPostCObjectFnType ptr);

Dart_Handle get_dart_object(uintptr_t ptr);

void drop_dart_object(uintptr_t ptr);

uintptr_t new_dart_opaque(Dart_Handle handle);

intptr_t init_frb_dart_api_dl(void *obj);

void wire_prepare_viewmodel_update_stream(int64_t port_);

void wire_prepare_view_update_stream(int64_t port_);

WireSyncReturn wire_prepare_channels(void);

void wire_start_rust_logic(int64_t port_);

WireSyncReturn wire_send_user_action(struct wire_uint_8_list *task_address,
                                     struct wire_Serialized *serialized);

WireSyncReturn wire_clean_viewmodel(void);

WireSyncReturn wire_read_viewmodel(struct wire_uint_8_list *item_address);

struct wire_Serialized *new_box_autoadd_serialized_0(void);

struct wire_uint_8_list *new_uint_8_list_0(int32_t len);

void free_WireSyncReturn(WireSyncReturn ptr);

static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) wire_prepare_viewmodel_update_stream);
    dummy_var ^= ((int64_t) (void*) wire_prepare_view_update_stream);
    dummy_var ^= ((int64_t) (void*) wire_prepare_channels);
    dummy_var ^= ((int64_t) (void*) wire_start_rust_logic);
    dummy_var ^= ((int64_t) (void*) wire_send_user_action);
    dummy_var ^= ((int64_t) (void*) wire_clean_viewmodel);
    dummy_var ^= ((int64_t) (void*) wire_read_viewmodel);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_serialized_0);
    dummy_var ^= ((int64_t) (void*) new_uint_8_list_0);
    dummy_var ^= ((int64_t) (void*) free_WireSyncReturn);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    dummy_var ^= ((int64_t) (void*) get_dart_object);
    dummy_var ^= ((int64_t) (void*) drop_dart_object);
    dummy_var ^= ((int64_t) (void*) new_dart_opaque);
    return dummy_var;
}
