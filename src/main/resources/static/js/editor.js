const Header = window.Header;
const List = window.List;
const Warning = window.Warning


let editor = new EditorJS({
    holder : 'editorjs',
    placeholder: 'Введите договор',
    tools: {
        Marker: {
            class: window.Marker,
        },
        header: {
            class: Header,
            config: {
                placeholder: 'Напишите заголовок',
                levels: [4, 5],
                defaultLevel: 4
            }
        },
        warning: {
            class: Warning,
            inlineToolbar: true,
            config: {
                titlePlaceholder: 'Замечание',
                messagePlaceholder: 'Описание',
            },
        },
        list: {
            class: List,
            inlineToolbar: true,
            config: {
                defaultStyle: 'unordered'
            }
        },
    },
    i18n: {
        messages: {
            ui: {
                "blockTunes": {
                    "toggler": {
                        "Click to tune": "Нажмите, чтобы настроить",
                        "or drag to move": "или перетащите"
                    },
                },
                "inlineToolbar": {
                    "converter": {
                        "Convert to": "Изменить блок"
                    }
                },
                "toolbar": {
                    "toolbox": {
                        "Add": "Добавить",
                        "Filter": "Фильтр",
                    }
                }
            },
            toolNames: {
                "Text": "Обычный текст",
                "Heading": "Заголовок",
                "List": "Список",
                "Image": "Изображение",
                "Bold": "Полужирный",
                "Italic": "Курсив",
                "InlineCode": "Моноширинный",
            },
            tools: {
            },
            blockTunes: {
                "delete": {
                    "Delete": "Удалить"
                },
                "moveUp": {
                    "Move up": "Переместить вверх"
                },
                "moveDown": {
                    "Move down": "Переместить вниз"
                }
            },
        }
    }
});

function getEditorContent() {
    return editor.save().then(x => console.log(x))
}