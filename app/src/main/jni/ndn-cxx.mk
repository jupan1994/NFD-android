LOCAL_PATH := $(call my-dir)
LOCAL_PATH_SAVED := $(LOCAL_PATH)

include $(CLEAR_VARS)
LOCAL_MODULE := ndn-cxx
NDN_CXX_BOOST_LIBS = system filesystem date_time iostreams program_options chrono random
LOCAL_SHARED_LIBRARIES := libcrypto_shared libssl_shared $(addsuffix _shared,$(addprefix boost_,$(NDN_CXX_BOOST_LIBS)))
LOCAL_STATIC_LIBRARIES := sqlite3_static boost_regex_static
NDN_CXX_SRC_FILES := \
    data.cpp \
    delegation-list.cpp \
    delegation.cpp \
    encoding/block-helpers.cpp \
    encoding/block.cpp \
    encoding/buffer-stream.cpp \
    encoding/buffer.cpp \
    encoding/encoder.cpp \
    encoding/estimator.cpp \
    encoding/nfd-constants.cpp \
    encoding/tlv.cpp \
    exclude.cpp \
    face.cpp \
    ims/in-memory-storage-entry.cpp \
    ims/in-memory-storage-fifo.cpp \
    ims/in-memory-storage-lfu.cpp \
    ims/in-memory-storage-lru.cpp \
    ims/in-memory-storage-persistent.cpp \
    ims/in-memory-storage.cpp \
    interest-filter.cpp \
    interest.cpp \
    key-locator.cpp \
    link.cpp \
    lp/cache-policy.cpp \
    lp/nack-header.cpp \
    lp/nack.cpp \
    lp/packet.cpp \
    meta-info.cpp \
    mgmt/control-response.cpp \
    mgmt/dispatcher.cpp \
    mgmt/nfd/channel-status.cpp \
    mgmt/nfd/command-options.cpp \
    mgmt/nfd/control-command.cpp \
    mgmt/nfd/control-parameters.cpp \
    mgmt/nfd/controller.cpp \
    mgmt/nfd/face-event-notification.cpp \
    mgmt/nfd/face-monitor.cpp \
    mgmt/nfd/face-query-filter.cpp \
    mgmt/nfd/face-status.cpp \
    mgmt/nfd/fib-entry.cpp \
    mgmt/nfd/forwarder-status.cpp \
    mgmt/nfd/rib-entry.cpp \
    mgmt/nfd/status-dataset.cpp \
    mgmt/nfd/strategy-choice.cpp \
    mgmt/status-dataset-context.cpp \
    name-component.cpp \
    name.cpp \
    net/address-converter.cpp \
    net/detail/link-type-helper.cpp \
    net/detail/linux-if-constants.cpp \
    net/detail/network-monitor-impl-rtnl.cpp \
    net/dns.cpp \
    net/ethernet.cpp \
    net/face-uri.cpp \
    net/network-address.cpp \
    net/network-interface.cpp \
    net/network-monitor-stub.cpp \
    net/network-monitor.cpp \
    packet-base.cpp \
    security/command-interest-signer.cpp \
    security/detail/openssl-helper.cpp \
    security/digest-sha256.cpp \
    security/key-params.cpp \
    security/pib/certificate-container.cpp \
    security/pib/detail/identity-impl.cpp \
    security/pib/detail/key-impl.cpp \
    security/pib/identity-container.cpp \
    security/pib/identity.cpp \
    security/pib/key-container.cpp \
    security/pib/key.cpp \
    security/pib/pib-memory.cpp \
    security/pib/pib-sqlite3.cpp \
    security/pib/pib.cpp \
    security/safe-bag.cpp \
    security/security-common.cpp \
    security/signature-sha256-with-ecdsa.cpp \
    security/signature-sha256-with-rsa.cpp \
    security/signing-helpers.cpp \
    security/signing-info.cpp \
    security/tpm/back-end-file.cpp \
    security/tpm/back-end-mem.cpp \
    security/tpm/back-end.cpp \
    security/tpm/key-handle-mem.cpp \
    security/tpm/key-handle.cpp \
    security/tpm/tpm.cpp \
    security/transform/base64-decode.cpp \
    security/transform/base64-encode.cpp \
    security/transform/block-cipher.cpp \
    security/transform/bool-sink.cpp \
    security/transform/buffer-source.cpp \
    security/transform/digest-filter.cpp \
    security/transform/hex-decode.cpp \
    security/transform/hex-encode.cpp \
    security/transform/hmac-filter.cpp \
    security/transform/private-key.cpp \
    security/transform/public-key.cpp \
    security/transform/signer-filter.cpp \
    security/transform/step-source.cpp \
    security/transform/stream-sink.cpp \
    security/transform/stream-source.cpp \
    security/transform/strip-space.cpp \
    security/transform/transform-base.cpp \
    security/transform/verifier-filter.cpp \
    security/v2/additional-description.cpp \
    security/v2/certificate-bundle-fetcher.cpp \
    security/v2/certificate-cache.cpp \
    security/v2/certificate-fetcher-direct-fetch.cpp \
    security/v2/certificate-fetcher-from-network.cpp \
    security/v2/certificate-fetcher-offline.cpp \
    security/v2/certificate-fetcher.cpp \
    security/v2/certificate-storage.cpp \
    security/v2/certificate.cpp \
    security/v2/key-chain.cpp \
    security/v2/trust-anchor-container.cpp \
    security/v2/trust-anchor-group.cpp \
    security/v2/validation-error.cpp \
    security/v2/validation-policy-command-interest.cpp \
    security/v2/validation-policy-config.cpp \
    security/v2/validation-policy-simple-hierarchy.cpp \
    security/v2/validation-policy.cpp \
    security/v2/validation-state.cpp \
    security/v2/validator-config/checker.cpp \
    security/v2/validator-config/filter.cpp \
    security/v2/validator-config/name-relation.cpp \
    security/v2/validator-config/rule.cpp \
    security/v2/validator.cpp \
    security/validator-config.cpp \
    security/validator-null.cpp \
    security/validity-period.cpp \
    security/verification-helpers.cpp \
    selectors.cpp \
    signature-info.cpp \
    signature.cpp \
    transport/tcp-transport.cpp \
    transport/transport.cpp \
    transport/unix-transport.cpp \
    util/config-file.cpp \
    util/dummy-client-face.cpp \
    util/indented-stream.cpp \
    util/io.cpp \
    util/notification-subscriber.cpp \
    util/random.cpp \
    util/regex/regex-top-matcher.cpp \
    util/scheduler-scoped-event-id.cpp \
    util/scheduler.cpp \
    util/segment-fetcher.cpp \
    util/sha256.cpp \
    util/signal/connection.cpp \
    util/signal/scoped-connection.cpp \
    util/sqlite3-statement.cpp \
    util/string-helper.cpp \
    util/time-unit-test-clock.cpp \
    util/time.cpp \
    ../../ndn-cxx-android/ndn-cxx-custom-logger.cpp \
    ../../ndn-cxx-android/ndn-cxx-custom-logging.cpp
LOCAL_SRC_FILES := $(addprefix ndn-cxx/src/,$(NDN_CXX_SRC_FILES))
LOCAL_CPPFLAGS := -I$(LOCAL_PATH)/ndn-cxx/src -I$(LOCAL_PATH)/ndn-cxx-android -I$(LOCAL_PATH)/../../../build/generated/source/ndn-cxx
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/ndn-cxx-android $(LOCAL_PATH)/../../../build/generated/source/include
LOCAL_LDLIBS := -llog -latomic
include $(BUILD_SHARED_LIBRARY)

$(call import-module,../packages/boost/1.65.1)
$(call import-module,../packages/sqlite/3.18.0)
$(call import-module,../packages/openssl/1.0.2m)
