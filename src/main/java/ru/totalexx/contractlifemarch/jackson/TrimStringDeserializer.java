package ru.totalexx.contractlifemarch.jackson;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.std.StringDeserializer;
import org.springframework.boot.jackson.JsonComponent;

import java.io.IOException;

@JsonComponent
public class TrimStringDeserializer extends StringDeserializer {
    @Override
    public String deserialize(JsonParser jsonParser, DeserializationContext ctx) throws IOException {
        String text = super.deserialize(jsonParser, ctx);
        return text != null ? text.trim() : null;
    }
}
