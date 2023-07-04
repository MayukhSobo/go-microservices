PROTO_DIR := ./pkg/proto
TRANSPORT_DIR := ./pkg/transport

PROTOS := $(wildcard $(PROTO_DIR)/**/*.proto)
GOOGLE_PROTO_FILES := $(wildcard $(PROTO_DIR)/google/**/*.proto)

STUBS := $(patsubst $(PROTO_DIR)/%.proto,$(TRANSPORT_DIR)/%/pb/%.pb.go,$(PROTOS))
GOOGLE_STUBS := $(patsubst $(PROTO_DIR)/google/%.proto,$(TRANSPORT_DIR)/google/%/pb/%.pb.go,$(GOOGLE_PROTO_FILES))

gen-all: $(STUBS) $(GOOGLE_STUBS)
	./scripts/proto.sh

$(TRANSPORT_DIR)/%/pb/%.pb.go: $(PROTO_DIR)/%.proto
	mkdir -p $(TRANSPORT_DIR)/$(dir $*)/pb
	protoc --proto_path=$(PROTO_DIR) --go_out=$(TRANSPORT_DIR) --go_opt=paths=source_relative $<

$(TRANSPORT_DIR)/google/%/pb/%.pb.go: $(PROTO_DIR)/google/%.proto
	mkdir -p $(TRANSPORT_DIR)/google/$(dir $*)/pb
	protoc --proto_path=$(PROTO_DIR) --go_out=$(TRANSPORT_DIR) --go_opt=paths=source_relative,plugins=grpc:$(TRANSPORT_DIR) $<

clean:
	rm -rf $(TRANSPORT_DIR)/*

.PHONY: gen-all clean
